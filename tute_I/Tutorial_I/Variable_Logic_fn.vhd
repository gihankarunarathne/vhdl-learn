----------------------------------------------------------------------------------
-- Company: UOM
-- Engineer: Gihan Karunarathne
-- 
-- Create Date:    13:42:15 08/21/2013 
-- Design Name: 
-- Module Name:    Variable_Logic_fn - Behavioral 
-- Project Name:   Tutorial I
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

entity Variable_Logic_fn is
	port( input: in STD_LOGIC_VECTOR ( 2 downto 0);
			D: in STD_LOGIC;
			Z: out STD_LOGIC
		);
end Variable_Logic_fn;

architecture Behavioral of Variable_Logic_fn is

begin

	Z <= 	'0' when input="000" else
			D when input="001" else
			'1' when input="010" else
			'0' when input="011" else
			not D when input="100" else
			'0' when input="101" else
			'0' when input="110" else
			'0' when input="111";

end Behavioral;