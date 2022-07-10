----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:56:50 07/06/2022 
-- Design Name: 
-- Module Name:    RegistroVariables - Behavioral 
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

entity RegistroVariables is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end RegistroVariables;

architecture Behavioral of RegistroVariables is

begin
	process(clk) 
		variable a : std_logic;
		variable b : std_logic;
			begin
				if(clk'event and clk='1')then
					a := d;
					b := a;
					q <= b;
				end if;
	end process;

end Behavioral;
 
