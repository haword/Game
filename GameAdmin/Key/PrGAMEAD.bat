@echo off

echo    旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴� 
echo    � Guardant AutoProtection WIZARD batch file � 
echo    � Copyright Aktiv Co.  1997-2001            � 
echo    읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴� 
@rem    뵠œ 貰ℓ젺  4 덋�� 2002  �   20:24

@rem ****** GAMEADMIN.EXE **********************************************************************
@rem *
@rem *    뤲Œ�┘��� �黍�筌젺� � Guardant Stealth
@rem *    맆遜�젺�˚� ��與� �昔�㎖ⅳ�췅 굪뱱뜐�
@rem *    뇿蟯�� �� 췅캙ㄵ�⑨ ˘說貰�
@rem *    뤲�´夕� ´褻Ŀ = 1
@rem *    뤲�´夕� 쵟稅�  = 1
@rem *    뤲�´夕� ��Д�� �昔｀젹щ = 1
@rem *    뤲�´涉筍 췅エ葉� か蹟� 첓┐瑜 5 Ж�呻
@rem *    닱Д���� 飡젺쩆設�瑜 貰�↓��⑨ 쥯ゆÞ�
@rem *
@rem ***************************************************************************************

C:\Guardant\NWKEY32.EXE /GS /V /UV=1 /UM=1 /UN=1 /T=5 /MSG=GAMEADMIN.MSG @GAMEADMIN.FIL
IF ERRORLEVEL 1 GOTO ErrorEnd
IF NOT EXIST C:\UTILS\NOVEX32.DLL COPY C:\Guardant\novex32.dll C:\UTILS\NOVEX32.DLL 


:ErrorEnd


