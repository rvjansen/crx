rem @echo off
 set myt=\tests\
 set mys=
rem To run each of the possible pre-execution messages.
rem 0.1 is first line of other messages.
rem Can anything in DOS produce a message 2.n?
rem 3.1 comes when file to be rexxed doesn't exist.
 %mys%crx NonExist.rx >t.t
echo ================================================================ >> t.t
rem %mys%crx %myt%501.rx >>t.t
 call progmsg 601
 call progmsg 602
 call progmsg 603
 call progmsg 701
 call progmsg 702
 call progmsg 801
 call progmsg 802
 call progmsg 901
 call progmsg 902
 call progmsg 1001
 call progmsg 1002
 call progmsg 1003
 call progmsg 1004
 call progmsg 1005
 call progmsg 1006
 call progmsg 1301
 call progmsg 1401
 call progmsg 1402
 call progmsg 1403
 call progmsg 1404
 call progmsg 1501
 call progmsg 1502
 call progmsg 1503
 call progmsg 1504
 call progmsg 1801
 call progmsg 1802
 call progmsg 1901
 call progmsg 1902
 call progmsg 1903
 call progmsg 1904
 call progmsg 1906
 call progmsg 1907
 call progmsg 2001
 call progmsg 2002
 call progmsg 2101
rem 2201 can't come from ASCII.
 call progmsg 2501
 call progmsg 2502
 call progmsg 2503
 call progmsg 2504
 call progmsg 2505
 call progmsg 2506
 call progmsg 2507
 call progmsg 2508
 call progmsg 2509
 call progmsg 2511
 call progmsg 2512
 call progmsg 2513
 call progmsg 2514
 call progmsg 2515
 call progmsg 2516
 call progmsg 2517
 call progmsg 2701
 call progmsg 3001
 call progmsg 3002
 call progmsg 3101
 call progmsg 3102
 call progmsg 3103
 call progmsg 3501
 call progmsg 3600
 call progmsg 3701
 call progmsg 3702
 call progmsg 3801
 call progmsg 3802
 call progmsg 3803
 call progmsg 4601
 call progmsg 5001
 call progmsg 5101
 call progmsg 5301
 call progmsg 5302
 set myt=
 set mys=
