when s2 => -- set up piece wise function
	report "State 2";
	if   (x >= -524288 and x<= -262144) then
		y <= (x/64 + 8192)-1;
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
	if rst = '1' then
		state <= s0;
	else 
		state <= s3;
	end if;