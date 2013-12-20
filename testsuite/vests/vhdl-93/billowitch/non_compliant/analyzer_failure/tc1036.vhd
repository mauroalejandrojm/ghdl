
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
-- $Id: tc1036.vhd,v 1.2 2001-10-26 16:30:05 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c06s04b00x00p02n01i01036ent IS
END c06s04b00x00p02n01i01036ent;

ARCHITECTURE c06s04b00x00p02n01i01036arch OF c06s04b00x00p02n01i01036ent IS

BEGIN
  TESTING: PROCESS
    type     T2 is array (0 to 31) of BIT;
    variable V1 : T2 ;
  BEGIN
    V1(2 := '1' ;  -- Failure_here
       assert FALSE 
       report "***FAILED TEST: c06s04b00x00p02n01i01036 - Missing parentheses." 
       severity ERROR;
       wait;
       END PROCESS TESTING;

       END c06s04b00x00p02n01i01036arch;
