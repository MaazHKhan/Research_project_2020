library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Prac_One is
port(
	CLOCK_50_in :		in		std_logic;		-- assign to 50MHz clock signal pin
	EN				:		in		std_logic;		-- assign to switch to enable sending
	TXPIN			:		out   std_logic:= '1';-- assign to pin to tx uart
	LED1			:		out	std_logic;
	LED2			:		out	std_logic;
	LED3			:		out	std_logic
);


--signal State: integer:= 0;
end Prac_One;











architecture behave of Prac_One is
SIGNAL PRESCL: INTEGER:=0;
SIGNAL BITCOUNT: INTEGER:=0;
SIGNAL TMP: std_logic:='0';
SIGNAL DATA: std_logic_vector(31 downto 0):="01000001010000100100001101000100"; -- data to be sent over uart for testing purposes, ignore
Signal start	: std_logic:='1';
signal state1 : std_logic:='1';
signal state2 : std_logic:='0';
signal state3 : std_logic:='0';
signal A: unsigned(7 downto 0):= "00000000";
signal B: unsigned(7 downto 0):= "00000000";
Signal InA	:	unsigned(7 downto 0);
Signal InB	:	unsigned(7 downto 0);

Signal OldInA	:	unsigned(7 downto 0);
Signal OldInB	:	unsigned(7 downto 0);
Signal OUT1	:	unsigned(15 downto 0);
TYPE State_type is (Gen,Func,Tx);
Signal State: State_Type:= Gen;
Signal RUN	: std_logic:='0';
begin
LED2 <= RUN;
LED1 <= not EN;
Process(CLOCK_50_in)
Begin

IF RUN = '0' then					-- check if button has been pressed
	RUN <= not EN;
else
IF (rising_edge(CLOCK_50_in))  Then		-- run on clock cycle


	case State is
		WHEN GEN =>				-- Generate numbers using counters
			InA <= A;
			InB <= B;
--			LED1 <= '1';
--			LED2 <= '0';
--			LED3 <= '0';
			State <= Func; 	-- goto function
			
		WHEN Func =>
		-----------------------------------------------------------------
		--	Function goes here
		-----------------------------------------------------------------
		
		
		
		
		
			OUT1 <= InA * InB;	-- arbritary multiplication function
			
			
			
			
			
			
		-----------------------------------------------------------------
		--	Function ends here
		-----------------------------------------------------------------	
			
			
			
			data <= std_logic_vector(OUT1) & std_logic_vector(OLDInA) & std_logic_vector(OLDInB); -- prepare data to be transmitted
			
			
			
			if (A < 255) then
				if (B<255) then  -- generate new numbers
					B <= B +1;
				else
					B <= "00000000";
					A <= A +1;
				end if;
			else
				Run <= '0';			-- stop running when 254x254 has been reached
				A <= "00000000";
			end if;
			
			
--			LED1 <= '0';
--			LED2 <= '1';
--			LED3 <= '0';
			State <= Tx;
			
		WHEN Tx =>
--			LED1 <= '0';
--			LED2 <= '0';
--			LED3 <= '1';
			
			OldInA <= INA;
			OLDINB <= INB;
			
			if (PRESCL < 434) then -- 5208 = 9600bps rate, 2604 = 19200, 434 = 115200......
				PRESCL <= PRESCL +1;
			else
				PRESCL <= 0;
				TMP <= not TMP;
				
				IF	(BITCOUNT = 0) THEN
					TXPIN <= '0'; 					-- start bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 1) THEN
					TXPIN <= '1';				-- first data bit 				Sending ! as first byte for reference
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 2) THEN
					TXPIN <= '0';
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 3) THEN
					TXPIN <= '0';
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 4) THEN
					TXPIN <= '0';
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 5) THEN
					TXPIN <= '0';
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 6) THEN
					TXPIN <= '1';
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 7) THEN
					TXPIN <= '0';
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 8) THEN
					TXPIN <= '0';				-- last data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 9) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 10) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				
				elsif	(BITCOUNT = 11) THEN
					TXPIN <= '0'; 					-- start bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 12) THEN
					TXPIN <= DATA(0);				-- first data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 13) THEN
					TXPIN <= DATA(1);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 14) THEN
					TXPIN <= DATA(2);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 15) THEN
					TXPIN <= DATA(3);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 16) THEN
					TXPIN <= DATA(4);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 17) THEN
					TXPIN <= DATA(5);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 18) THEN
					TXPIN <= DATA(6);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 19) THEN
					TXPIN <= DATA(7);				-- last data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 20) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 21) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif	(BITCOUNT = 22) THEN
					TXPIN <= '0'; 					-- start bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 23) THEN
					TXPIN <= DATA(8);				-- first data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 24) THEN
					TXPIN <= DATA(9);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 25) THEN
					TXPIN <= DATA(10);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 26) THEN
					TXPIN <= DATA(11);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 27) THEN
					TXPIN <= DATA(12);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 28) THEN
					TXPIN <= DATA(13);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 29) THEN
					TXPIN <= DATA(14);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 30) THEN
					TXPIN <= DATA(15);				-- last data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 31) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 32) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif	(BITCOUNT = 33) THEN
					TXPIN <= '0'; 					-- start bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 34) THEN
					TXPIN <= DATA(16);				-- first data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 35) THEN
					TXPIN <= DATA(17);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 36) THEN
					TXPIN <= DATA(18);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 37) THEN
					TXPIN <= DATA(19);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 38) THEN
					TXPIN <= DATA(20);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 39) THEN
					TXPIN <= DATA(21);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 40) THEN
					TXPIN <= DATA(22);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 41) THEN
					TXPIN <= DATA(23);				-- last data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 42) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 43) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif	(BITCOUNT = 44) THEN
					TXPIN <= '0'; 					-- start bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 45) THEN
					TXPIN <= DATA(24);				-- first data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 46) THEN
					TXPIN <= DATA(25);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 47) THEN
					TXPIN <= DATA(26);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 48) THEN
					TXPIN <= DATA(27);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 49) THEN
					TXPIN <= DATA(28);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 50) THEN
					TXPIN <= DATA(29);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 51) THEN
					TXPIN <= DATA(30);
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 52) THEN
					TXPIN <= DATA(31);				-- last data bit
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 53) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 54) THEN
					TXPIN <= '1';					-- stop bit, no parity atm, shouldnt be hard to implement
					BITCOUNT <= BITCOUNT + 1;
				elsif (BITCOUNT = 55) THEN
					TXPIN <= '1';					-- remains stopped
					BITCOUNT <= 0;
					state <= Gen;
				elsif (BITCOUNT > 55) then
					TXPIN <= '1';
					BITCOUNT<= 0;
					state <= Gen;					-- go back to generate and then function
				END IF;
			
			end if;
			
		When others =>
			state <= Gen;			-- catch

	end case;
end if;
end if;
end process;	
end behave;