
-- Copyright (C) 2002 Morgan Kaufmann Publishers, Inc

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

entity tb_edge_triggered_Dff is
end entity tb_edge_triggered_Dff;


architecture test of tb_edge_triggered_Dff is

  signal D, clk, clr, Q : bit := '0';

begin

  dut : entity work.edge_triggered_Dff(behavioral)
    port map ( D => D, clk => clk, clr => clr,
	       Q => Q );

  stimulus : process is
  begin
    D <= '1';	wait for 10 ns;
    clk <= '1';	wait for 10 ns;
    D <= '0';	wait for 10 ns;
    clk <= '0';	wait for 10 ns;
    D <= '1';	wait for 10 ns;
    clr <= '1';	wait for 10 ns;
    clk <= '1';	wait for 10 ns;
    clr <= '0';	wait for 10 ns;
    clk <= '0';	wait for 10 ns;

    wait;
  end process stimulus;

end architecture test;
