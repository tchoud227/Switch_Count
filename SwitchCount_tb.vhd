-----------------------------------------------------------------------------
-----
-- SwitchCount_tb
--
-- Test bench for SwitchCount components. This test bench will apply
-- all possible input combination of switches so that we can analyze
-- output behavior which allows to determine if the device is functioning correctly
-----------------------------------------------------------------------------
-----

library ieee;
use ieee.std_logic_1164.all;

entity SwitchCount_tb is
end SwitchCount_tb;

architecture SwitchCount_tb_ARCH of SwitchCount_tb is
	 component SwitchCount
	 Port ( switches: in std_logic_vector (7 downto 0);
			   leds: out std_logic_vector (7 downto 0);
           segments: out std_logic_vector (6 downto 0));
end component;

-------------signals----------------------------
	 signal switches: std_logic_vector (7 downto 0);
	 signal leds: std_logic_vector (7 downto 0);
	 signal segments: std_logic_vector (6 downto 0);
begin
---Unit-Under-Test-----------------------------------------
UUT: SwitchCount port map(
switches => switches,
leds => leds,
segments => segments);

---Signal Driver--------------------------------------------
SIGNAL_DRIVER: process
	begin
		 switches <= "00000000";
			wait for 20 ns;
		 switches <= "00000001";
			wait for 20 ns; 
		 switches <= "00000011";
			wait for 20 ns; 
		 switches <= "00000111";
			wait for 20 ns; 
		 switches <= "00001111";
			wait for 20 ns; 
		 switches <= "00011111";
			wait for 20 ns; 
		 switches <= "00111111";
			wait for 20 ns; 
		 switches <= "01111111";
			wait for 20 ns; 
		 switches <= "11111110";
			wait for 20 ns; 
		 switches <= "11111100";
			wait for 20 ns; 
		 switches <= "11111000";
			wait for 20 ns; 
		 switches <= "11110000";
			wait for 20 ns; 
		 switches <= "11100000";
			wait for 20 ns; 
		 switches <= "11000000";
			wait for 20 ns; 
		 switches <= "10000000";
			wait for 20 ns; 
		 switches <= "00000000";
			wait; 
	 end process;
 
 
 
end SwitchCount_tb_ARCH;