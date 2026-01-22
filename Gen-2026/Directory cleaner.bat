title DirectoryCleaner
@echo off
cls
color 02
:clear
cls
echo DirectoryCleaner ver.0.00.1
echo Developped by AlphaRocket35
:rename
set /p nom=Entrez votre nom :
echo Bonjour %nom%
pause
echo Welcome to the directory cleaning platform !
pause
:back
	echo "_________________________________________"
	echo 1-Type rename to change your DirCl username
	echo "-----------------------------------------"
	echo 2-Type start to start deleting folder(s)
	echo "-----------------------------------------"
	echo 3-Type exit to close
	echo "-----------------------------------------"
	echo 4-Type clear to reset DirCl
	echo "_________________________________________"
	goto typezone
		:start
			echo "_______________________________________________________________"
			echo 1-Type rename to change your DirCl username
			echo "---------------------------------------------------------------"
			echo 2-Type delete to start deleting folder(s)
			echo "---------------------------------------------------------------"
			echo 3-Type exit to close Directory Cleaner
			echo "---------------------------------------------------------------"
			echo 4-Type back to go back
			echo "---------------------------------------------------------------"
			echo 5-Type clear to reset DirCl
			echo "_______________________________________________________________"
			goto typezone
		:delete
			set /p directory=Path of directory :
			color 04
			tree "%directory%"
			rmdir "%directory%"
			echo If the program can't access the file in the line above, the program have deleted repertory with success
			tree "%directory%"
			echo Press a button on keyboard to continue
			pause>nul
			color 02
			cls
                        echo Deleting finished
			echo "__________________________________"
			echo 1-Type start to re delete folder(s)
			echo "----------------------------------"
			echo 2-Type exit to close
			echo "----------------------------------"
			echo 3-Type clear to reset DirCl
			echo "__________________________________"
			goto typezone
		:directory
			echo Choose the directory do you want to delete
			set /p directory=Path of directory :
	:exit
		color 06
		echo See you soon %nom%
		echo Press a button to close
		pause>nul	
		exit
	
	:typezone	
		set /p cmd=
		goto %cmd%
::useless for the moment:typezone2	
				set /p cmd=
				goto %cmd%
		goto directory