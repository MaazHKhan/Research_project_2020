library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity Prac_2 is
--generic(clk_freq : integer);

port(
	clk	: std_logic ;
	rst	: std_logic 
	);
end Prac_2;

architecture Behavior of Prac_2 is
	type  t_state is (s0,s1);--s2,s3);--,s4,s5,s6,s7,s8);
	signal state : t_state;
	signal x					: integer range -524288 to 524288; -- x range of sigmaoid
	signal y					: integer; --range 0 to 65536; 						   -- y(x) value
	signal z					: integer;	-- 
	signal k	: std_logic_vector(2 downto 0); -- used to select piece wise function
	 

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
						y <= 0;
						z <= 0;
						state <= s1;
						report "In state 0";
					
					when s1 => -- set up piece wise "x" range
						report "In state 1";
						if (x < 524288) then 
							--x <= x+1;
							if(x >=-524288 and x<=-524280) then
								x <= x+1;
								y <= (x/64 + 8520-328);
							elsif (x >=-524280 and x<=-524270) then
								x <= x+1;
								y <=  (x/32 + 11796-328)+806 ;
							elsif (x >=-524270 and x<=-524260) then
								x <= x+1;
								y <= (x/8 + 24904-328);
								
							
							end if;
						else
						state <= s1;
						end if;
					
					-- when s2 => -- set up piece wise function
						-- report "State 2";
						-- if   (x >=-524288 and x<=-262144) then
							-- k <= "000";
						-- elsif(x >=-262144 and x<=-131072) then
							-- k <= "001";
						-- elsif(x >=-262144 and x<=-65536)  then
							-- k <= "010";
						-- elsif(x >=-65536  and x<= 65536)  then
							-- k <= "011";
						-- elsif(x >= 65536  and x<= 131072) then
							-- k <= "100";
						-- elsif(x >= 131072 and x<= 262144) then
							-- k <= "100";
						-- elsif(x >= 262144 and x<= 524288) then
							-- k <= "110";
						-- end if;
						
					-- when s3 => --calculate sigmoid
						-- report"State 3";
						-- if (k="000") then
							-- y <= (x/64 + 8520-328);
						-- end if;
						
				
				
						
						
				end case;
			end if;
		end if;
	end process;



end architecture;	