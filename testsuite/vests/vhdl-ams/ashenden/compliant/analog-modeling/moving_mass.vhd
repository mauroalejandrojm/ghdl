
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

library ieee_proposed;  use ieee_proposed.mechanical_systems.all;
                        
entity moving_mass is
  port ( terminal external_attachment : translational );
end entity moving_mass;

----------------------------------------------------------------

architecture behavioral of moving_mass is
  constant mass : real := 10.0;
  constant stiffness : real := 2.0;
  constant damping : real := 5.0;
  quantity position across driving_force through external_attachment;
  quantity velocity : real;
begin
  position == velocity'integ;
  mass * velocity'dot == driving_force - stiffness * velocity'integ - damping * velocity
    tolerance velocity'tolerance;
end architecture behavioral;
