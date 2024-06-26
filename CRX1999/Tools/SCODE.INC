; After the freedoms in group order have been used, there are numeric
; relations between the codes for the syntax elements. These are made
; use of in actions when materializing the $s codes.  The $s codes are
; nearly compact but not in the best order for execution so there is
; later a $s to $p conversion.
; The relations that have to be fitted around are:
;BBBBBB  B           BB     BBBBBBBBBBBB                     BB  B
;                                          V   VV  VVVVV   V   VV
;                                            U   UU
;          P   PPP P   P   P
;         S   S   S
;                                       NN  N
;                                                       III
;      DD   DD
;                       LMM
; Also see intervals for DROP & EXPOSE type.(Got this wrong & had to fixup.)
; Also see needs of PosPlus PosMinus PosEq. (Would like to fit here but
; actually used flags.)
; Also need Length-Max-Min sequential.
S2P:
 Assert $sPercent eq $-S2P
BaseB equ $-$Percent
 Assert $ eq BaseB+$Percent�db $pIntDivide
 Assert $ eq BaseB+$Asterisk�db $pMultiply
 Assert $ eq BaseB+$Slash�db $pDivide
 Assert $ eq BaseB+$Rem�db $pRemainder
 Assert $ eq BaseB+$Xor�db $pXor
 Assert $ eq BaseB+$Or�db $pOr
; DROP and EXPOSE are treated together. Also DropList and ExposeList
 BaseD equ $-$DROP
 Assert $sDrop eq $-S2P
 Assert $ eq BaseD+$DROP�db $pDrop
 db $pExpose
 Assert $ eq BaseB+$And�db $pAnd
; STEM/STREAM/NORMAL are treated together
BaseS equ $-$STEM
 Assert $sStem eq $-S2P
 Assert $ eq BaseS+$STEM�db $pStem
; PARSE sources are done together.
BaseP equ $-$WITH
 Assert $sWith eq $-S2P
 Assert $ eq BaseP+$WITH�db $pWith
 Assert $sDropList eq $-S2P
 db $pDropList
 db $pExposeList
 Assert $ eq BaseS+$STREAM�db $pStream
 Assert $ eq BaseP+$LINEIN�db $pLineIn
 Assert $ eq BaseP+$SOURCE�db $pSource
 Assert $ eq BaseP+$VERSION�db $pVersion
 Assert $ eq BaseS+$NORMAL�db $pNormal
 Assert $ eq BaseP+$PULL�db $pPull
 db 0 ; Spare
 Assert $sMinus eq $-S2P
 Assert $ eq BaseB+$Minus�db $pSubtract
 Assert $ eq BaseB+$Plus�db $pAdd
 Assert $ eq BaseP+$VAR�db $pWith; n.b.
 Assert $sLength eq $-S2P
 db $pLength
 db $pMax
 db $pMin
 Assert $ eq BaseP+$ARG�db $pArg
; Eq was forced to top of its group, in order to make comparisons compact.
 Assert $sEq eq $-S2P
 Assert $ eq BaseB+$Eq�db $pEq
 Assert $ eq BaseB+$Ne�db $pNe
 Assert $ eq BaseB+$Lt�db $pLt
 Assert $ eq BaseB+$Le�db $pLe
 Assert $ eq BaseB+$Ge�db $pGe
 Assert $ eq BaseB+$Gt�db $pGt
 Assert $sSeq eq $-S2P
 Assert $ eq BaseB+$Seq�db $pSeq
 Assert $ eq BaseB+$Sne�db $pSne
 Assert $ eq BaseB+$Slt�db $pSlt
 Assert $ eq BaseB+$Sle�db $pSle
 Assert $ eq BaseB+$Sge�db $pSge
 Assert $ eq BaseB+$Sgt�db $pSgt
; NUMERIC components are done together.
BaseN equ $-$DIGITS
 Assert $sDigits eq $-S2P
 Assert $ eq BaseN+$DIGITS�db $pDigits
 Assert $ eq BaseN+$FUZZ�db $pFuzz
 db 0; $sTailed was here, now unneeded
; Several verbs are done together.
BaseV equ $-$NOP
 Assert $sNop eq $-S2P
 Assert $ eq BaseV+$NOP�db $pNop
 Assert $sForm eq $-S2P
 Assert $ eq BaseN+$FORM�db $pForm
BaseU equ $-$Not
 Assert $ eq BaseU+$Not�db $pNot
 Assert $sAddress eq $-S2P�db $pAddress
 Assert $ eq BaseV+$INTERPRET�db $pInterpret
 Assert $ eq BaseV+$OPTIONS�db $pOptions
 Assert $sNegate eq $-S2P
 Assert $ eq BaseU+$Minus�db $pNegate
 Assert $sPositive eq $-S2P
 Assert $ eq BaseU+$Plus�db $pPositive
 Assert $sExit eq $-S2P
 Assert $ eq BaseV+$EXIT�db $pExit
 Assert $ eq BaseV+$PUSH�db $pPush
 Assert $ eq BaseV+$QUEUE�db $pQueue
 Assert $sReturns eq $-S2P
 Assert $ eq BaseV+$RETURN�db $pReturns
 Assert $ eq BaseV+$SAY�db $pSay
 Assert $sNumber eq $-S2P�db $pNumber
 db 0;
 Assert $sRaise eq $-S2P�db $pRaise
 Assert $ eq BaseV+$TRACE�db $pTrace
 db 0; was $sCatDot now unneeded.
 Assert $ eq BaseB+$Abut�db $pAbut
 Assert $ eq BaseB+$Cat�db $pCat
 Assert $sLeave eq $-S2P
 Assert $ eq BaseV+$LEAVE�db $pLeave
 Assert $sIterate eq $-S2P
 Assert $ eq BaseV+$ITERATE�db $pIterate
 Assert $ eq BaseB+$Power�db $pPower
