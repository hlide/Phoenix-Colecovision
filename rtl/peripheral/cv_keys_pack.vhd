-------------------------------------------------------------------------------
--
-- $Id: cv_keys_pack-p.vhd,v 1.2 2006/01/05 22:22:28 arnim Exp $
--
-- Copyright (c) 2006, Arnim Laeuger (arnim.laeuger@gmx.net)
--
-- All rights reserved
--
-------------------------------------------------------------------------------
--
-- Retaining the above copyright for attribution.
--
-- License to use granted to CollectorVision Phoenix Project
--
library ieee;
use ieee.std_logic_1164.all;

package cv_keys_pack is

  constant cv_key_0_c        : natural :=  0;
  constant cv_key_1_c        : natural :=  1;
  constant cv_key_2_c        : natural :=  2;
  constant cv_key_3_c        : natural :=  3;
  constant cv_key_4_c        : natural :=  4;
  constant cv_key_5_c        : natural :=  5;
  constant cv_key_6_c        : natural :=  6;
  constant cv_key_7_c        : natural :=  7;
  constant cv_key_8_c        : natural :=  8;
  constant cv_key_9_c        : natural :=  9;
  constant cv_key_asterisk_c : natural := 10;
  constant cv_key_number_c   : natural := 11;
  constant cv_key_none_c     : natural := 12;
  constant cv_key_f3_c		  : natural := 13;
  constant cv_key_f4_c		  : natural := 14;
  constant cv_key_last_c     : natural := cv_key_f4_c;

  subtype  cv_key_t is std_logic_vector(1 to 4);
  type     cv_keys_t is array (natural range 0 to cv_key_last_c)
    of cv_key_t;

  -----------------------------------------------------------------------------
  -- Key map encoding
  --
  -- cv_key_t(1)  <->  Pin 1
  -- cv_key_t(2)  <->  Pin 2
  -- cv_key_t(3)  <->  Pin 3
  -- cv_key_t(4)  <->  Pin 4
  -----------------------------------------------------------------------------
  constant cv_keys_c : cv_keys_t := (
    cv_key_0_c        => "0011",		-- 3
    cv_key_1_c        => "1110",		-- E
    cv_key_2_c        => "1101",		-- D
    cv_key_3_c        => "0110",		-- 6
    cv_key_4_c        => "0001",		-- 1
    cv_key_5_c        => "1001",		-- 9
    cv_key_6_c        => "0111",		-- 7
    cv_key_7_c        => "1100",		-- C
    cv_key_8_c        => "1000",		-- 8
    cv_key_9_c        => "1011",		-- B
    cv_key_asterisk_c => "1010",		-- A
    cv_key_number_c   => "0101",		-- 5
    cv_key_f3_c		 => "0010",		-- 2
	 cv_key_f4_c		 => "0100",		-- 4
	 cv_key_none_c     => "1111"		-- F    falta 0, 2, 4,
  );

end;
