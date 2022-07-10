----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:24:55 07/06/2022 
-- Design Name: 
-- Module Name:    Latch_Process - Behavioral 
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

entity Latch_Process is
    Port ( dato : in  STD_LOGIC;
           control : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end Latch_Process;

architecture Behavioral of Latch_Process is

begin
	process(dato, control)
		begin
			if control = '1' then 
				salida <= dato;
			end if;
	end process;

end Behavioral;

