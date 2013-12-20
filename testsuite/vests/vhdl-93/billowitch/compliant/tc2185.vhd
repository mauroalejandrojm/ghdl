
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

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

-- ---------------------------------------------------------------------
--
-- $Id: tc2185.vhd,v 1.2 2001-10-26 16:29:46 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s02b05x00p01n02i02185ent IS
END c07s02b05x00p01n02i02185ent;

ARCHITECTURE c07s02b05x00p01n02i02185arch OF c07s02b05x00p01n02i02185ent IS

BEGIN
  TESTING: PROCESS
    type PHYS is range -1000 to 1000
      units
        A;
        B = 10 A;
        C = 10 B;
        D = 10 C;
      end units;
    variable k : PHYS := 1 A;
    variable m : PHYS := 5 B;
  BEGIN
    k := - m;
    assert NOT( k = - 5 B )
      report "***PASSED TEST: c07s02b05x00p01n02i02185"
      severity NOTE;
    assert ( k =  - 5 B )
      report "***FAILED TEST: c07s02b05x00p01n02i02185 - For each of these unary operators, the operand and the result have the same type."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s02b05x00p01n02i02185arch;
