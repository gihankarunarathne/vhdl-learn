----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:40 08/27/2013 
-- Design Name: 
-- Module Name:    ConditionBasedOn1Matching - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ConditionBasedOn1Matching is
	port(s0,s1: in STD_LOGIC;
			input: in STD_LOGIC_VECTOR (3 downto 0);
			z: out STD_LOGIC);
end ConditionBasedOn1Matching;
	
architecture Behavioral of ConditionBasedOn1Matching is

begin
	z <=  input(0) when s0='0' else -- if stop after first matching condition
			-- So, here it out put input(0) when (s0=0 and s1=0) or (s0=0 and s1=1)
			input(1) when s0='1' and s1='0' else
			input(2) when s0='0' and s1='1' else
			input(3);

end Behavioral;

