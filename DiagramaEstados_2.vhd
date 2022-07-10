----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:00:01 07/06/2022 
-- Design Name: 
-- Module Name:    DiagramaEstados_2 - Behavioral 
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

entity DiagramaEstados_2 is
    Port ( clk : in  STD_LOGIC;
           x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end DiagramaEstados_2;

architecture Behavioral of DiagramaEstados_2 is

type estados is(q0, q1, q2, q3, q4);
signal edo_pres, edo_fut: estados;

begin
	proceso1: process (edo_pres, x) begin
		case edo_pres is
			when q0 => z <= '0';
				if x = '0' then 
					edo_fut <= q4;
				else
					edo_fut <= q1;
				end if;
			when q1 => z <= '0';
				if x = '0' then 
					edo_fut <= q4;
				else
					edo_fut <= q2;
				end if;
			when q2 => 
				if x = '0' then 
					edo_fut <= q4;
					z <= '0';
				else
					edo_fut <= q3;
					z <= '1';
				end if;
			when q3 => z <= '0';
				if x = '0' then 
					edo_fut <= q3;
				else
					edo_fut <= q3;
				end if;
			when q4 => z <= '0';
				if x = '0' then 
					edo_fut <= q4;
				else
					edo_fut <= q1;
				end if;
		end case;
	end process proceso1;
	
	proceso2: process (clk) begin
		if(clk'event and clk='1') then
			edo_pres <= edo_fut;
		end if;
	end process proceso2;

end Behavioral;

