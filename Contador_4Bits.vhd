----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:52 07/06/2022 
-- Design Name: 
-- Module Name:    Contador_4Bits - Behavioral 
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

entity Contador_4Bits is
    Port ( clk : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR(3 downto 0));
end Contador_4Bits;

architecture Behavioral of Contador_4Bits is

begin
	process(clk)
		begin
			if(clk'event and clk='1')then 
				q <= q + 1;
			end if;
	end process;

end Behavioral;

