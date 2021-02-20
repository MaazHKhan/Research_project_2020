library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity Prac_2 is
--generic(clk_freq : integer);

port(
	clk	: std_logic ;
	rst	: std_logic 
	);
end Prac_2;

architecture Behavior of Prac_2 is
	type  t_state is (s0,s1,s2);--,s3,s4,s5,s6,s7,s8);
	-- type  x_m is array (0 to 1048575) of integer;
	-- type  y_m is array (0 to 65535) of integer;
	
	signal state : t_state;
	signal x					: integer; -- x range of sigmaoid
	signal y					: integer; 						   -- y(x) value
	signal z					: integer;
	signal i					: integer;
	signal k					: integer;-- 
	--signal k					: std_logic_vector(2 downto 0); -- used to select piece wise function
	-- signal m_x					: x_m; 

begin
	
	process(clk) is
	begin
		if rising_edge(clk) then
			if rst = '1' then
				-- Reset Values
				state <= s0;
			else
				case state is 
					when s0 => -- intialisation state
						x <= -524288;
						-- y() <= 0;
						z <= 0;
						
						state <= s1;
						report "In state 0";
					
					when s1 => -- set up piece wise "x" range
						report "In state 1";
						if (x < 524288) then 
							---m_x(z) <= x;
							x <= x+1;
							--z <= z+1;
							state <= s2;
						else
						-- z <= 0;
						x <= -524287;
						state <= s2;
						end if;
					
					when s2 => -- set up piece wise function
						report "State 2";
						if   (x >=-524288 and x<=-262144) then
							y <= x/64 + 8192;
							--x <= x+1;
							-- z <= z+1;	--k <= "000";
						elsif(x >=-262144 and x<=-131072) then
							y <= (x/32 + 117468)+806;--k <= "001";
							--x <= x+1;-- z <= z+1;
						elsif(x >=-262144 and x<=-65536)  then
							y <=  (x/8 + 24576);--k <= "010";
							--x <= x+1;-- z <= z+1;
						elsif(x >=-65536  and x<= 65536)  then
							y <=  (x/4 + 32440);--k <= "011";
							--x <= x+1;-- z <= z+1;
						elsif(x >= 65536  and x<= 131072) then
							y <=  (x/8 + 40960);--k <= "100";
							--x <= x+1;-- z <= z+1;
						elsif(x >= 131072 and x<= 262144) then
							y <= ((x/32 + 52101))+1144;--k <= "101";
							--x <= x+1;-- z <= z+1;
						elsif(x >= 262144 and x<= 524288) then
							y <= (x/64 + 56688)+546;--k <= "110";
							--x <= x+1;-- z <= z+1;
						end if;
						state <= s1;
					end case;
			end if;
		end if;
	end process;
end architecture;	





-- state <= s3;
					-- when s3 => --calculate sigmoid
						-- report"State 3";
						
						-- if (k="000") then
							-- y <= (x/64 + 8520-328);
						-- elsif (k="001") then
							-- y <=  (x/32 + 11796-328)+806;
						-- elsif (k="010") then
							-- y <=  (x/8 + 24904-328); 
						-- elsif (k="011") then
							-- y <=  (x/4 + 32768-328);
						-- elsif (k="100") then
							-- y <=  (x/8 + 41288-328);
						-- elsif (k="101") then
							-- y <= (x/32 + 52429-328)+1144;
						-- elsif (k="101") then
							-- y <= (x/64 + 57016-328)+546;
						-- end if;