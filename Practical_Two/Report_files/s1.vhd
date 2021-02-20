when s1 => -- set up piece wise "x" range
	report "In state 1";
	if (x < 524288) then 
		x <= x+1;
		state <= s2;
	else
		x <= -524287;
		state <= s2;
	end if;