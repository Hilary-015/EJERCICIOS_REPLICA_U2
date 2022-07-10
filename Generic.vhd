----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:36:07 07/06/2022 
-- Design Name: 
-- Module Name:    Generic - Behavioral 
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

entity Generic is
	generic(contador_valor: integer := 511);
    Port ( clk : in  STD_LOGIC;
           ld : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           data : in  integer range 0 to contador_valor;
           Q : inout  integer range 0 to contador_valor);
end Generic;

architecture Behavioral of Generic is

signal contador_signal: integer range 0 to contador_valor;

begin
	process(clk, en, ld, clr) begin
		if(clr = '0') then 
			contador_signal <= 0;
			elsif clk'event and clk='1' then 
				if en = '1' then
				if ld = '0' then
					contador_signal <= data;
				else
					contador_signal <= data;
				end if;
				end if;
		end if;
	end process;

end Behavioral;

