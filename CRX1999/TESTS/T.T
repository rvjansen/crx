More msgs 
================================================================ 
/*  7.2 */
  select
    when 7=8 then nop
    nop
  end
---------------------------------------------------------------- 
Error 7.2 running C:\TESTS\702B.RX, line 4: SELECT on line 742 requires WHEN,
 OTHERWISE, or END; found "nop"================================================================ 
/*  10.1 */
  abc:end
---------------------------------------------------------------- 
Error 10.1 running C:\TESTS\1001B.RX, line 2: END has no corresponding DO or
 SELECT================================================================ 
/*  10.1 */
  nop
  end
---------------------------------------------------------------- 
Error 10.1 running C:\TESTS\1001C.RX, line 3: END has no corresponding DO or
 SELECT================================================================ 
/*  10.2 */
  do a.b.c.d=1 to 10
   nop
  end a.b.c.d
/* ClauseLine at following DO */
  do a.b.c.d=1 to 10
   nop
/* For this wrong END */
  end a.b.3.d
---------------------------------------------------------------- 
Error 10.2 running C:\TESTS\1002B.RX, line 9: END corresponding to DO on line 6
 must have a symbol following that matches the control variable (or no
 symbol); found "a.b.3.d"================================================================ 
/*  10.3 */
  do a.b=1 to 9
   do





  end a.b
---------------------------------------------------------------- 
Error 10.3 running C:\TESTS\1003B.RX, line 9: END corresponding to DO on line 3
 must not have a symbol following it because there is no control variable;
 found "a.b"================================================================ 
/* 15.1 */
 Wrong='A A AA'X
---------------------------------------------------------------- 
Error 15.1 running C:\TESTS\1501B.RX, line 2: Invalid location of blank in
 position 4 in hexadecimal string================================================================ 
/* 15.2 */
 Wrong='1 11 1111'B
---------------------------------------------------------------- 
Error 15.2 running C:\TESTS\1502B.RX, line 2: Invalid location of blank in
 position 5 in binary string================================================================ 
/*  18.1 */
  if 7=8;;;abc
---------------------------------------------------------------- 
Error 18.1 running C:\TESTS\1801B.RX, line 2: IF keyword on line 2 requires
 matching THEN clause; found "abc"================================================================ 
/*  18.2 */
  select
    when 7=8
  end
---------------------------------------------------------------- 
Error 18.2 running C:\TESTS\1802B.RX, line 4: WHEN keyword on line 4 requires
 matching THEN clause; found "end"================================================================ 
/* 18.2 */
  select
    when 7=8 then nop
    otherwise &
  end
---------------------------------------------------------------- 
Error 7.2 running C:\TESTS\1802E.RX, line 4: SELECT on line 742 requires WHEN,
 OTHERWISE, or END; found "&"================================================================ 
/*  18.2 */
  select
    when 7
Fallguy:;
---------------------------------------------------------------- 
Error 18.2 running C:\TESTS\1802F.RX, line 5: WHEN keyword on line 5 requires
 matching THEN clause; found ""================================================================ 
/*  19.3 */
  signal on numeric name *
---------------------------------------------------------------- 
Error 25.3 running C:\TESTS\1903B.RX, line 2: SIGNAL ON must be followed by one
 of the keywords ERROR, FAILURE, HALT, LOSTDIGITS, NOTREADY, NOVALUE, or
 SYNTAX; found "numeric"================================================================ 
/*  19.7 */
  parse version =(+abc)
---------------------------------------------------------------- 
Error 19.7 running C:\TESTS\1907B.RX, line 2: Symbol expected in parsing
 pattern; found "+"================================================================ 
/*  20.1 */
  drop (99)
---------------------------------------------------------------- 
Error 20.1 running C:\TESTS\2001D.RX, line 2: Name required; found "99"================================================================ 
/*  20.1 */
  drop abc (99)
---------------------------------------------------------------- 
Error 20.1 running C:\TESTS\2001E.RX, line 2: Name required; found "99"================================================================ 
/*  20.1 */
  procedure expose 7
---------------------------------------------------------------- 
Error 20.1 running C:\TESTS\2001F.RX, line 2: Name required; found "7"================================================================ 
/*  20.2 */
  iterate >7
---------------------------------------------------------------- 
Error 20.2 running C:\TESTS\2002B.RX, line 2: Found ">" where only a name is
 valid================================================================ 
/*  21.1 */
  nop + 7
---------------------------------------------------------------- 
Error 21.1 running C:\TESTS\2101B.RX, line 2: The clause ended at an unexpected
 token; found "+"================================================================ 
/*  21.1 */
  do j=7 to 9
  end j *
---------------------------------------------------------------- 
Error 21.1 running C:\TESTS\2101C.RX, line 3: The clause ended at an unexpected
 token; found "*"================================================================ 
/*  21.1 */
  do;end 7
---------------------------------------------------------------- 
Error 21.1 running C:\TESTS\2101D.RX, line 2: The clause ended at an unexpected
 token; found "7"================================================================ 
/* 21.1 */
  select
    when 7=8 then nop
  end 7
---------------------------------------------------------------- 
Error 21.1 running C:\TESTS\2101E.RX, line 4: The clause ended at an unexpected
 token; found "7"================================================================ 
/* 30.1 */
/* A nearly overlong as an insert. */
 nop,
V012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678
---------------------------------------------------------------- 
Error 21.1 running C:\TESTS\2101F.RX, line 4: The clause ended at an unexpected
 token; found "V0123456789012345678901234567890123456789012345678..."================================================================ 
/*  25.6 */
  address x y with output stream s input stack
---------------------------------------------------------------- 
Error 25.6 running C:\TESTS\2506B.RX, line 2: INPUT must be followed by one of
 the keywords NORMAL, STEM, or STREAM; found "stack"================================================================ 
/*  25.7 */
  address x y with input stream s output stack
---------------------------------------------------------------- 
Error 25.7 running C:\TESTS\3501B.RX, line 2: OUTPUT must be followed by one of
 the keywords APPEND, NORMAL, REPLACE, STEM, or STREAM; found "stack"================================================================ 
/*  35.1 */
  ( > 7
---------------------------------------------------------------- 
Error 35.1 running C:\TESTS\3501D.RX, line 2: Invalid expression detected at ">"================================================================ 
/*  35.1 */
  +>7
---------------------------------------------------------------- 
Error 35.1 running C:\TESTS\3501C.RX, line 2: Invalid expression detected at ">"================================================================ 
/*  35.1 */
  ->
---------------------------------------------------------------- 
Error 35.1 running C:\TESTS\3501E.RX, line 2: Invalid expression detected at " "================================================================ 
/*  35.1 */
  \>7
---------------------------------------------------------------- 
Error 35.1 running C:\TESTS\3501F.RX, line 2: Invalid expression detected at
 "\>"================================================================ 
/*  35.1 */
  do >7
---------------------------------------------------------------- 
Error 35.1 running C:\TESTS\3501G.RX, line 2: Invalid expression detected at ">"================================================================ 
/*  35.1 */
  exit &7
---------------------------------------------------------------- 
Error 35.1 running C:\TESTS\3501H.RX, line 2: Invalid expression detected at "&"================================================================ 
/*  35.1 */
  if || 7
---------------------------------------------------------------- 
Error 35.1 running C:\TESTS\3501I.RX, line 2: Invalid expression detected at
 "||"================================================================ 
/*  35.1 */
  interpret >7
---------------------------------------------------------------- 
Error 35.1 running C:\TESTS\3501J.RX, line 2: Invalid expression detected at ">"================================================================ 
/*  36.1 */
  x = f(7,1
---------------------------------------------------------------- 
Error 36 running C:\TESTS\3600B.RX, line 2: Unmatched "(" in expression================================================================ 
/* 37.1 */
  say ( a+b, 3)
---------------------------------------------------------------- 
Error 37.1 running C:\TESTS\3701B.RX, line 2: Unexpected ","================================================================ 
/*  38.1 */
  parse upper version > 7
---------------------------------------------------------------- 
Error 38.1 running C:\TESTS\3801B.RX, line 2: Invalid parsing template detected
 at ">"================================================================ 
/*  38.1 */
  pull *7
---------------------------------------------------------------- 
Error 38.1 running C:\TESTS\3801C.RX, line 2: Invalid parsing template detected
 at "*"================================================================ 
/*  38.1 */
  parse version 7 ,*7
---------------------------------------------------------------- 
Error 38.1 running C:\TESTS\3801D.RX, line 2: Invalid parsing template detected
 at "*"================================================================ 
/*  38.1 */
  parse version 7 > 7
---------------------------------------------------------------- 
Error 38.1 running C:\TESTS\3801E.RX, line 2: Invalid parsing template detected
 at ">"================================================================ 
/*  38.1 */
  parse var x > 7
---------------------------------------------------------------- 
Error 38.1 running C:\TESTS\3801F.RX, line 2: Invalid parsing template detected
 at ">"================================================================ 
/*  38.2 */
  parse version -abc
---------------------------------------------------------------- 
Error 38.2 running C:\TESTS\3802C.RX, line 2: Invalid parsing position detected
 at "abc"================================================================ 
/*  38.2 */
  parse version =abc
---------------------------------------------------------------- 
Error 38.2 running C:\TESTS\3802D.RX, line 2: Invalid parsing position detected
 at "abc"================================================================ 
/*  46.1 */
  parse version +(abc
---------------------------------------------------------------- 
Error 46.1 running C:\TESTS\4601B.RX, line 2: Extra token ("abc") found in
 variable reference; ")" expected================================================================ 
/*  53.2 */
  address x y with output stem (*)
---------------------------------------------------------------- 
Error 53.2 running C:\TESTS\5302B.RX, line 2: Variable reference expected after
 STEM keyword; found "("