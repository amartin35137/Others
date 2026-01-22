title LocHackWinV3
@echo off
cls
color 02
:clear
cls
echo LocHackWin ver.0.00.2
echo Developped by AlphaRocket35
echo You're on this PC :
echo %COMPUTERNAME%
:rename
set /p nom=Entrez votre nom :
echo Bonjour %nom%
pause
echo Welcome to the hacking platform !
pause
:back
	echo "_________________________________________"
	echo 1-Type rename to change your LHW username
	echo "-----------------------------------------"
	echo 2-Type start to start hacking this PC
	echo "-----------------------------------------"
	echo 3-Type exit to close
	echo "-----------------------------------------"
	echo 4-Type clear to reset LHW
	echo "_________________________________________"
	goto typezone
		:start
			echo "_______________________________________________________________"
			echo 1-Type rename to change your LHW username
			echo "---------------------------------------------------------------"
			echo 2-Type delete to start hacking this PC and remove selected files
			echo "---------------------------------------------------------------"
			echo 3-Type exit to close LocHackWin
			echo "---------------------------------------------------------------"
			echo 4-Type back to go back
			echo "---------------------------------------------------------------"
			echo 5-Type clear to reset LHW
			echo "_______________________________________________________________"
			goto typezone
		:delete
			color 04
			tree C:\
			color 02
			cls
                        echo Hacking finished
			echo "_____________________________"
			echo 1-Type start to rehack this PC
			echo "-----------------------------"
			echo 2-Type exit to close
			echo "-----------------------------"
			echo 3-Type clear to reset LHW
			echo "_____________________________"
			goto typezone
	:exit
		color 06
		echo See you soon %nom%
		echo Press a button to close
		pause>nul	
		exit
	
	:typezone	
		set /p cmd=
		goto %cmd%
	:tree
		tree "C:\"
	:admin
		cmd
