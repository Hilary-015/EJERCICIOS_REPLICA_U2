----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:01:52 07/06/2022 
-- Design Name: 
-- Module Name:    RegistroParalelo - Behavioral 
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

entity RegistroParalelo is
    Port ( D : in  STD_LOGIC_VECTOR(0 to 7);
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(0 to 7));
end RegistroParalelo;

architecture Behavioral of RegistroParalelo is

begin
	process(clk)
		begin
			if(clk'event and clk='1')then 
				Q <= D;
			end if;
	end process;

end Behavioral;

