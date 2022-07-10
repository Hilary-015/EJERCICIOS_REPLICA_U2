----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:07 07/06/2022 
-- Design Name: 
-- Module Name:    Contador_UP - Behavioral 
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

entity Contador_UP is
    Port ( clk : in  STD_LOGIC;
           UP : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR(3 downto 0));
end Contador_UP;

architecture Behavioral of Contador_UP is

begin
	process(UP, clk)
		begin
			if(clk'event and clk='1') then
				if(UP = '0') then 
					Q <= Q + 1;
				else
					Q <= Q - 1;
				end if;
			end if;
	end process;

end Behavioral;

