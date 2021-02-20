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
	clk	: std_logic ;
	rst	: std_logic 
	);
end Prac_2;

architecture Behavior of Prac_2 is
	type  t_state is (s0,s1,s2);--,s3,s4,s5,s6,s7,s8);
	-- type  x_m is array (0 to 1048575) of integer;
	-- type  y_m is array (0 to 65535) of integer;
	
	signal state : t_state;
	signal x					: integer range -524288 to 524288; -- x range of sigmaoid
	signal y					: integer range  0 to 65537; -- y(x) value
	signal z					: integer range  0 to 1048576;
	
	
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
							z <= z+1;
							state <= s2;
						else
						x <= -524287;
						state <= s2;
						end if;
					
					when s2 => -- set up piece wise function
						report "State 2";
						if   (x >= -524288 and x<= -262144) then
							y <= (x/64 + 8192);
							-- write(line_var, integer'image(y));
							-- writeline(text_var, line_var);
						elsif(x >= -262144 and x<= -131072) then
							y <= (x/32 + 11468)+807;
							
						elsif(x >= -262144 and x<= -65536)  then
							y <=  (x/8 + 24576)-1;
							
						elsif(x >= -65536  and x<= 65536)  then
							y <=  (x/4 + 32440)-1;
							
						elsif(x >= 65536  and x<= 131072) then
							y <=  (x/8 + 40960)-1;
							
						elsif(x >= 131072 and x<= 262144) then
							y <= ((x/32 + 52101))+1143;
							
						elsif(x >= 262144 and x<= 524288) then
							y <= (x/64 + 56688)+657;
							
						end if;
						state <= s1;
					--when s3 =>
						-- -- file_open(text_var,"D:\Documents\Semester_2_2020\EES_424\Practicals\practical_2\csv\write.txt", write_mode);       
						-- file_open(text_var,"D:\Documents\Semester_2_2020\EES_424\Practicals\practical_2\csv\write.txt", append_mode); 
						-- write(line_var, integer'image(y));
						-- writeline(text_var, line_var);   -- write line_var into the file
						-- file_close(text_var);
						-- state <= s1;
					end case;
			end if;
		end if;
	end process;
	
end architecture;	


--Simulate for 211us for all values of y(x)