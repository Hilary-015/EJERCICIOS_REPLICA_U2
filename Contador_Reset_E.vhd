----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:52 07/06/2022 
-- Design Name: 
-- Module Name:    Contador_Reset_E - Behavioral 
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

entity Contador_Reset_E is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR(3 downto 0));
end Contador_Reset_E;

architecture Behavioral of Contador_Reset_E is

begin
	process(clk, reset)
		begin
			if(clk'event and clk='1')then
				if(reset ='1' or q = "1001") then
					q <= "0000";
					else
						q <= q + 1;
				end if;
			end if;
	end process;

end Behavioral;

