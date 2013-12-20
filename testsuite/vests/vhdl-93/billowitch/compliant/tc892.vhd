
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
-- $Id: tc892.vhd,v 1.2 2001-10-26 16:30:01 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

Package c10s02b00x00p02n01i00892pkg is
  function gimme_value return integer;
end c10s02b00x00p02n01i00892pkg;

package body c10s02b00x00p02n01i00892pkg is
  constant x : integer := 0; -- should not be visible outside
  function gimme_value return integer is
  begin
    return (x);
  end;
end c10s02b00x00p02n01i00892pkg;


use work.c10s02b00x00p02n01i00892pkg.all;
ENTITY c10s02b00x00p02n01i00892ent IS
END c10s02b00x00p02n01i00892ent;

ARCHITECTURE c10s02b00x00p02n01i00892arch OF c10s02b00x00p02n01i00892ent IS
  constant   x : integer := 5;
BEGIN
  TESTING: PROCESS
  BEGIN
    assert NOT( gimme_value = 0 )
      report "***PASSED TEST: c10s02b00x00p02n01i00892"
      severity NOTE;
    assert ( gimme_value = 0 )
      report "***FAILED TEST: c10s02b00x00p02n01i00892 - A declaration body extends only within the package body."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c10s02b00x00p02n01i00892arch;
