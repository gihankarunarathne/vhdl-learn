----------------------------------------------------------------------------------
-- Company: UOM
-- Engineer: Gihan Karunarathne
-- 
-- Create Date:    11:40:23 08/21/2013 
-- Design Name: 
-- Module Name:    Full_Subtractor - Behavioral 
-- Project Name: 	 Tutorial I
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

entity Full_Subtractor is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           D : out  STD_LOGIC;
           B : out  STD_LOGIC);
end Full_Subtractor;

architecture Behavioral of Full_Subtractor is

begin
	D <= x xor y xor z;
	B <= (z and not(x xor y)) or (not x and y) ;

end Behavioral;

