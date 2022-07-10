----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:56 07/06/2022 
-- Design Name: 
-- Module Name:    Contador_Integer - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity Contador_Integer is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q : inout  integer range 0 to 15);
end Contador_Integer;

architecture Behavioral of Contador_Integer is

begin
	process(clk, reset) begin
		if (clk'event and clk = '1') then
			if(reset = '1' or Q = 9) then 
				Q <= 0;
			else
				Q <= (Q + 1);
			end if;
		end if;
	end process;

end Behavioral;

