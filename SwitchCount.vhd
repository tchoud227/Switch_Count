----------------------------------------------------------------------------------
-- SwitchCount
-- Tanim Choudhury
--
-- Counts the number of active input and displays the value on an 
-- LED bar display and a single seven-segment display. Handles switch input
-- of 8 switches.
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity SwitchCount is
	Port ( switches: in std_logic_vector (7 downto 0);
			  leds: out std_logic_vector (7 downto 0);
          segments: out std_logic_vector (6 downto 0));
end SwitchCount;

architecture SwitchCount_ARCH of SwitchCount is
	 -----normal-seven-segment-display-("abcdefg")--------------------CONSTANTS
	 constant BLANK_7SEG: std_logic_vector(6 downto 0) := "1111111";
	 constant ZERO_7SEG: std_logic_vector(6 downto 0) := "0000001";
	 constant ONE_7SEG: std_logic_vector(6 downto 0) := "1001111";
	 constant TWO_7SEG: std_logic_vector(6 downto 0) := "0010010";
	 constant THREE_7SEG: std_logic_vector(6 downto 0) := "0000110";
	 constant FOUR_7SEG: std_logic_vector(6 downto 0) := "1001100";
	 constant FIVE_7SEG: std_logic_vector(6 downto 0) := "0100100";
	 constant SIX_7SEG: std_logic_vector(6 downto 0) := "0100000";
	 constant SEVEN_7SEG: std_logic_vector(6 downto 0) := "0001111";
	 constant EIGHT_7SEG: std_logic_vector(6 downto 0) := "0000000";
	 constant NINE_7SEG: std_logic_vector(6 downto 0) := "0001100";
	 constant A_7SEG: std_logic_vector(6 downto 0) := "0001000";
	 constant B_7SEG: std_logic_vector(6 downto 0) := "1100000";
	 constant C_7SEG: std_logic_vector(6 downto 0) := "0110001";
	 constant D_7SEG: std_logic_vector(6 downto 0) := "1000010";
	 constant E_7SEG: std_logic_vector(6 downto 0) := "0110000";
	 constant F_7SEG: std_logic_vector(6 downto 0) := "0111000";
	 
	 -----------------------------Constants for states
	 constant LED_ON: std_logic := '1' ;
	 constant LED_OFF: std_logic := '0';
	 constant SWITCH_ON: std_logic := '0';
	 signal switchCount: integer range 0 to 8;
	begin
	 SWITCH_COUNTER: process(switches)
	 variable count: integer;
	 begin
		 --Count number of switches pressed--
		 count := 0;
		 if (switches(0) = SWITCH_ON) then
			count := count + 1;
		 end if;
		 if (switches(1) = SWITCH_ON) then
			count := count + 1;
		 end if;
		 if (switches(2) = SWITCH_ON) then
		 c	ount := count + 1;
		 end if;
		 if (switches(3) = SWITCH_ON) then
			count := count + 1;
		 end if;
		 if (switches(4) = SWITCH_ON) then
			count := count + 1;
		 end if;
		 if (switches(5) = SWITCH_ON) then
			count := count + 1;
		 end if;
		 if (switches(6) = SWITCH_ON) then
			count := count + 1;
		 end if;
		 if (switches(7) = SWITCH_ON) then
			count := count + 1;
		 end if;
		 
		 --------Update bar display & seven segement based on count------------
		 case count is
			 when 0 =>
				 leds(0) <= LED_OFF;
				 leds(1) <= LED_OFF;
				 leds(2) <= LED_OFF;
				 leds(3) <= LED_OFF;
				 leds(4) <= LED_OFF;
				 leds(5) <= LED_OFF;
				 leds(6) <= LED_OFF;
				 leds(7) <= LED_OFF;
				 segments <= ZERO_7SEG ;
			 when 1 =>
				 leds(0) <= LED_ON;
				 leds(1) <= LED_Off;
				 leds(2) <= LED_OFF;
				 leds(3) <= LED_OFF;
				 leds(4) <= LED_OFF;
				 leds(5) <= LED_OFF;
				 leds(6) <= LED_OFF;
				 leds(7) <= LED_OFF;
				 segments <= ONE_7SEG ;
			 when 2 =>
				 leds(0) <= LED_ON;
				 leds(1) <= LED_ON;
				 leds(2) <= LED_OFF;
				 leds(3) <= LED_OFF;
				 leds(4) <= LED_OFF;
				 leds(5) <= LED_OFF;
				 leds(6) <= LED_OFF;
				 leds(7) <= LED_OFF;
				 segments <= TWO_7SEG ;
			 when 3 =>
				 leds(0) <= LED_ON;
				 leds(1) <= LED_ON;
				 leds(2) <= LED_ON;
				 leds(3) <= LED_OFF;
				 leds(4) <= LED_OFF;
				 leds(5) <= LED_OFF;
				 leds(6) <= LED_OFF;
				 leds(7) <= LED_OFF;
				 segments <= THREE_7SEG ;
			 when 4 =>
				 leds(0) <= LED_ON;
				 leds(1) <= LED_ON;
				 leds(2) <= LED_ON;
				 leds(3) <= LED_ON;
				 leds(4) <= LED_OFF;
				 leds(5) <= LED_OFF;
				 leds(6) <= LED_OFF;
				 leds(7) <= LED_OFF;
				 segments <= FOUR_7SEG ;
			 when 5 =>
				 leds(0) <= LED_ON;
				 leds(1) <= LED_ON;
				 leds(2) <= LED_ON;
				 leds(3) <= LED_ON;
				 leds(4) <= LED_ON;
				 leds(5) <= LED_OFF;
				 leds(6) <= LED_OFF;
				 leds(7) <= LED_OFF;
				 segments <= FIVE_7SEG ;
			 when 6 =>
				 leds(0) <= LED_ON;
				 leds(1) <= LED_ON;
				 leds(2) <= LED_ON;
				 leds(3) <= LED_ON;
				 leds(4) <= LED_ON;
				 leds(5) <= LED_ON;
				 leds(6) <= LED_OFF;
				 leds(7) <= LED_OFF;
				 segments <= SIX_7SEG ;
			 when 7 =>
				 leds(0) <= LED_ON;
				 leds(1) <= LED_ON;
				 leds(2) <= LED_ON;
				 leds(3) <= LED_ON;
				 leds(4) <= LED_ON;
				 leds(5) <= LED_ON;
				 leds(6) <= LED_ON;
				 leds(7) <= LED_OFF;
				 segments <= SEVEN_7SEG ;
			 when others =>
				 leds(0) <= LED_ON;
				 leds(1) <= LED_ON;
				 leds(2) <= LED_ON;
				 leds(3) <= LED_ON;
				 leds(4) <= LED_ON;
				 leds(5) <= LED_ON;
				 leds(6) <= LED_ON;
				 leds(7) <= LED_ON;
				 segments <= EIGHT_7SEG ;
		 end case;
 
	end process; 
 
end SwitchCount_ARCH;