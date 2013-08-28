library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Four_MUX is
    Port ( 
			  D0 : in  STD_LOGIC_VECTOR (3 downto 0);
			  S0 : in STD_LOGIC_VECTOR (1 downto 0);
			  D1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  S1 : in STD_LOGIC_VECTOR (1 downto 0);
			  D2 : in  STD_LOGIC_VECTOR (3 downto 0);
			  S2 : in STD_LOGIC_VECTOR (1 downto 0);
			  D3 : in  STD_LOGIC_VECTOR (3 downto 0);
			  S3 : in STD_LOGIC_VECTOR (1 downto 0);
			  D4 : in  STD_LOGIC_VECTOR (3 downto 0);
			  S4 : in STD_LOGIC_VECTOR (1 downto 0);
			  Z : out  STD_LOGIC;
			  Z0 : inout  STD_LOGIC_VECTOR (3 downto 0)
			  );
end Four_MUX;

architecture Behavioral of Four_MUX is

begin
Z0(0) <= D0(0) when S0="00" else
	  D0(1) when S0="01" else
	  D0(2) when S0="10" else
	  D0(3);

Z0(1) <= D1(0) when S1="00" else
	  D1(1) when S1="01" else
	  D1(2) when S1="10" else
	  D1(3);
	  
Z0(2) <= D2(0) when S2="00" else
	  D2(1) when S2="01" else
	  D2(2) when S2="10" else
	  D2(3);
	  
Z0(3) <= D3(0) when S3="00" else
	  D3(1) when S3="01" else
	  D3(2) when S3="10" else
	  D3(3);
	  
Z <= Z0(0) when S4="00" else
	  Z0(1) when S4="01" else
	  Z0(2) when S4="10" else
	  Z0(3);
	  
end Behavioral;

