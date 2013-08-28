----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:55:01 08/28/2013 
-- Design Name: 
-- Module Name:    s8_level_sensitive_flip_flop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity LS_DFF is
	port(Q: out BIT; D, CLK: in BIT);
end LS_DFF;

architecture Behavioral of LS_DFF is

begin
process (D,CLK)
	begin
		if CLK='1' then
			Q <= D;
		end if;
	end process;

end Behavioral;

