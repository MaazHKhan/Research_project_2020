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
		if rst = '1' then
			state <= s0;
		else 
			state <= s3;
		end if;