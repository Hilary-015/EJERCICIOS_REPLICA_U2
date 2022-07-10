----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:57 07/06/2022 
-- Design Name: 
-- Module Name:    ContadorParalelo - Behavioral 
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
-- Hilary Madeley Calva Camacho
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ContadorParalelo is
    Port ( clk : in  STD_LOGIC;
           LD : in  STD_LOGIC;
           UP : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR(2 downto 0);
           Q : inout  STD_LOGIC_VECTOR(2 downto 0));
end ContadorParalelo;

architecture Behavioral of ContadorParalelo is

begin
	process(clk, LD, D, UP) begin
		if(clk'event and clk='1') then 
			if(LD = '0')then
				Q <= D;
				elsif UP = '1' then
					Q <= Q + 1;
				else 
					Q <= Q - 1;
			end if;
		end if;
	end process;

end Behavioral;

