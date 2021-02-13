library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.all;
library std;
use std.textio.all;

entity Prac_2 is
--generic(clk_freq : integer);

port(
	clk	: in std_logic ;
	rst	: in std_logic ;
	Tx_pin : out std_logic_vector(15 downto 0)
	);
end Prac_2;

architecture Behavior of Prac_2 is
	type  t_state is (s0,s1,s2,s3);--,s3,s4,s5,s6,s7,s8);
	-- type  x_m is array (0 to 1048575) of integer;
	-- type  y_m is array (0 to 65535) of integer;
	
	signal state : t_state;
	signal x					: integer range -524288 to 524288; -- x range of sigmaoid
	signal y					: integer range  0 to 65537; -- y(x) value
	signal z					: integer;
	
	
	-- signal i					: integer;
	-- signal k					: integer;-- 
	--signal k					: std_logic_vector(2 downto 0); -- used to select piece wise function
	-- signal m_x					: x_m; 

begin
	
	process(clk) is
	variable line_var : line;
	file text_var : text;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				-- Reset Values
				state <= s0;
			else
				case state is 
					when s0 => -- intialisation state
						-- file_open(text_var,"D:\Documents\Semester_2_2020\EES_424\Practicals\practical_2\csv\write.txt", append_mode);  
						x <= -524288;
						z <= 0;
						state <= s1;
						report "In state 0";
					
					when s1 => -- set up piece wise "x" range
						report "In state 1";
						if (x < 524288) then 
							x <= x+1;
							state <= s2;
						else
						x <= -524287;
						state <= s2;
						end if;
					
					when s2 => -- set up piece wise function
						report "State 2";
						 if   (x >= -524288 and x<= -458752) then
							y<= (x/2048  + 256)-1;
          
						elsif ((x >= -458752  and x<= -393216 )) then
							y<= (x/512 + 956);
          
						elsif ((x >= -393216  and x <= -327680 )) then
							y<= (x/256 + 1698);
          
						elsif ((x >= -327680 and x<= -262144 )) then
							y<= (x/64 + 5560);
          
						elsif ((x >= -262144  and x <= -196608 )) then
							y<= (x/32 + 9372);
          
						elsif ((x >= -196608 and x<= -131072)) then
							y<= (x/16 + 15395) ;
          
						elsif ((x >= -131072 and x<= -65536 )) then
							y<= (x/8 + 24208 );

						elsif ((x >= -65536 and x<= 0)) then
							y<= (x/4 + 34015);
          
						elsif ((x >= 0 and x<= 65536)) then
							y<= (x/4 + 34015);
          
						elsif ((x >= 65536 and x<= 131072 )) then
							y<= (x/8 +41344);
          
						elsif ((x >= 131072  and x<= 196608 )) then
							y<= (x/16+ 50152);
          
						elsif ((x >= 196608  and x<= 262144 )) then
							y<= (x/32 + 56167) ;
          
						elsif ((x >= 262144  and x<= 327680 )) then
							y<= (x/64 + 59977);
          
						elsif ((x >= 327680 and x<= 393216)) then
							y<= (x/256 + 63838);
          
						elsif ((x >= 393216 and x<= 458752)) then
							y<= (x/512 + 64551);
     
						elsif ((x >= 458752 and x<= 524288 )) then
							y<= (x/2048 + 65280)   ;  
							
						end if;
						Tx_pin <= std_logic_vector(to_unsigned(y, Tx_pin'length));
						if rst = '1' then
						state <= s0;
						else 
							state <= s3;
						end if;
					when s3 =>
						-- file_open(text_var,"D:\Documents\Semester_2_2020\EES_424\Practicals\practical_2\csv\write.txt", write_mode);       
--						file_open(text_var,"D:\Documents\Semester_2_2020\EES_424\Practicals\practical_2\csv\write.txt", append_mode); 
--						write(line_var, integer'image(y));
--						writeline(text_var, line_var);   -- write line_var into the file
--						file_close(text_var);
						state <= s1;
					end case;
			end if;
		end if;
	end process;
	
end architecture;	


--Simulate for 211us for all values of y(x)


--library ieee;
--use ieee.std_logic_1164.all;
----use ieee.numeric_std.all;
---- decide if the numeric_std library is necessary. 
--
--entity Prac_2  is
--    port (
--        -- everything here are single bits, i.e. std_logic, not vectors
--        clk 	: in std_logic;
--        rst_bar : in std_logic;
--        input 	: in std_logic;
--        output 	: out std_logic
--        );
--end Prac_2 ;
--
--architecture behavioral of Prac_2  is
--
--    type state is (init, got_1, got_11 ,got_110, got_1101);
--	signal present_state, next_state : state;
--    -- also define two signals called present_state and next_state as type 'state'
--
--begin
--
--    state_reg: process(clk,rst_bar)
--    begin
--        -- ensure a rising edge D-ff with the reset functionality as described in the paper
--        -- reset to 'init'
--		if rst_bar = '0' then
--			present_state <= init;
--		elsif rising_edge(clk) then
--			present_state <= next_state;
--		end if;
--	end process;
--
--    nxt_state: process(present_state,input)
--    begin
--        case present_state is
--        -- include functionality here to determine next state
--			when init => 
--				if input = '1' then
--					next_state <= got_1;
--				else 
--					next_state <= init;
--				end if;
--				
--			when got_1 =>
--				if input = '1' then
--					next_state <= got_11;
--				else 
--					next_state <= got_1;
--				end if;
--			
--			when got_11 =>
--				if input = '1' then
--					next_state <= got_110;
--				else 
--					next_state <= got_11;
--				end if;
--			
--			when got_110 =>
--				if input = '1' then
--					next_state <= got_1101;
--				else 
--					next_state <= got_110;
--				end if;
--				
--			when got_1101 =>
--				if input = '1' then
--					next_state <= init;
--				else 
--					next_state <= got_1101;
--				end if;
--			when others =>
--				next_state <= init;
--		end case;
--	end process;
--	
--    output_logic: process(present_state)
--    begin
--        case present_state is
--        -- include functionality here to determine output
--			when init => 
--				output <= '0';
--
--			when got_1 =>
--				output <= '0';
--			
--			when got_11 =>
--				output <= '0';
--			
--			when got_110 =>
--				output <= '0';
--				
--			when got_1101 =>
--				output <= '1';
--		end case;
--	end process;
--        
--end behavioral;
