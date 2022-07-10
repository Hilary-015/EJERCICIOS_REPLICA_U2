----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:42 07/06/2022 
-- Design Name: 
-- Module Name:    AsignacionPines - Behavioral 
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

entity AsignacionPines is
    Port ( clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR(3 downto 0));
	
attribute pin_numbers: String;	
attribute pin_numbers of AsignacionPines : entity is
"clk:1" & "Q(3):14" & "Q(2):15" & "Q(1):16" & "Q(0):17";

end AsignacionPines;

architecture Behavioral of AsignacionPines is

begin
	process(clk)
		begin
			if(clk'event and clk='1') then 
				Q <= Q + 1;
			end if;
	end process;

end Behavioral;
 
