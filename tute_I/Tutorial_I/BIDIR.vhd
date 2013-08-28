----------------------------------------------------------------------------------
-- Company: UOM
-- Engineer: Gihan Karunarathne
-- 
-- Create Date:    12:48:34 08/21/2013 
-- Design Name: 
-- Module Name:    BIDIR - Behavioral 
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

entity BIDIR is
    Port ( DATA : inout  STD_LOGIC;
           IOCTR : in  STD_LOGIC;
           INPUT : out  STD_LOGIC;
           OUTPUT : in  STD_LOGIC);
end BIDIR;

architecture Behavioral of BIDIR is

begin

	INPUT <= DATA when IOCTR = '1';
	DATA  <= OUTPUT when IOCTR = '0';

end Behavioral;

