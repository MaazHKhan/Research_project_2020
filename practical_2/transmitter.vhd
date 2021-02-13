library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity transmitter is
	generic (
		clk_per_bit	:	integer := 435
	);
	port (
		clk		:	in		std_logic;		-- 50MHz clock
		enable	:	in		std_logic;
		tx			:	out	std_logic;
		led		:	out	std_logic_vector(7 downto 0)
	);
end transmitter;

architecture transmitter_arch of transmitter is

	type state_type is (ST0, ST1, ST2, ST3, FUNC);
	signal ps				: state_type := ST0;
	
	signal tx_data			: std_logic_vector(7 downto 0);
	signal clk_counter	: integer range 0 to clk_per_bit-1;
	signal bit_counter	: integer range 0 to 15 := 0;
	
	signal a					: integer;
	signal b					: integer;
	signal c					: integer;
	
	type item is (ITS, ITA, ITB, ITC);
	signal it				: item := ITS;

begin

	tx_proc: process(clk)
	begin
		if (rising_edge(clk)) then
			case ps is
			
				-- idle
				when ST0 =>
					tx <= '1';
					clk_counter <= 0;
					bit_counter <= 0;
					a <= 0;
					b <= 0;
					c <= 0;
					
					if (enable = '1') then
						ps <= FUNC;
					else
						ps <= ST0;
					end if;
					
				-- function state
				when FUNC =>
					case it is
						-- start the transmission with 0xFF
						when ITS =>
							ps <= ST1;
							tx_data <= "11111111";
							it <= ITA;
						-- send the first value
						when ITA =>
							if (a < 255) then
								a <= a + 1;
								ps <= ST1;
							else
								a <= 0;
								ps <= ST0;
							end if;
							tx_data <= std_logic_vector(to_unsigned(a, tx_data'length));
							it <= ITB;
						-- send the second value
						when ITB =>
							if (b < 255) then
								b <= b + 1;
								ps <= ST1;
							else
								b <= 0;
								ps <= ST0;
							end if;
							tx_data <= std_logic_vector(to_unsigned(b, tx_data'length));
							it <= ITC;
						-- send the result
						when ITC =>
							--------------------------------------------------------------------------------------
							c <= a + b;																		 -- the famous function
							--------------------------------------------------------------------------------------
							if (c < 255) then
								ps <= ST1;
							else
								ps <= ST0;
							end if;
							tx_data <= std_logic_vector(to_unsigned(c, tx_data'length));
							it <= ITS;
					end case;
					
				-- start bit
				when ST1 =>			
					tx <= '0';
					-- wait a x number of clock cycles before continueing
					if (clk_counter < clk_per_bit-1) then
						clk_counter <= clk_counter + 1;
						ps <= ST1;
					else
						clk_counter <= 0;
						ps <= ST2;
					end if;
				
				-- send data bits
				when ST2 =>
					-- will only update on change of bit_counter
					tx <= tx_data(bit_counter);
					-- wait a x number of clock cycles before continueing
					if (clk_counter < clk_per_bit-1) then
						clk_counter <= clk_counter + 1;
						ps <= ST2;
					else
						clk_counter <= 0;
						
						if (bit_counter < 7) then
							bit_counter <= bit_counter + 1;
							ps <= ST2;
						else
							bit_counter <= 0;
							ps <= ST3;
						end if;
					end if;
				
				-- stop bits
				when ST3 =>
					tx <= '1';
					-- wait a x number of clock cycles before continueing
					if (clk_counter < clk_per_bit-1) then
						clk_counter <= clk_counter + 1;
						ps <= ST3;
					else
						clk_counter <= 0;
						--ps <= ST0;
						ps <= FUNC;
					end if;
				
				-- the catch all clause
				when others =>
					ps <= ST0;
			end case;
		end if;
	end process tx_proc;
	
	with ps select
		led <=	"00000001" when ST0,
					"00000011" when ST1, 
					"00000111" when ST2, 
					"00001111" when ST3, 
					"11111111" when others;
	
end transmitter_arch;