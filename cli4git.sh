#!/bin/bash
echo "===================CLI BASED GIT================="
echo
echo
echo "1.Configure Git"
echo "2.Git Status"
echo "3.Git Add"
echo "4.Git Commit"
echo "5.Git Push"
echo "6.Git Pull"
echo "7.Git Branch"
echo "8.Git Create Branch"
echo "9.Git Checkout"
echo "10.Git Merge"
echo "11.Git Clone"
echo "12.Git Remote Add"
echo "13.Git Fetch"
echo "14.Git Log"
read op
case $op in
	1)
		echo "Enter User Name"
		read un
		git config --global user.name "${un}"
		echo "Enter Email"
		read em
		git config --global user.email "${em}"
	;;
	2)
		git status
	;;
	3)
		echo
		echo  "1. To Add All File"
		echo  "2. To Add File Specific"
		echo
		read opt
		case $opt in
			1)
			git add .
			;;
			2)
			echo "Enter the File Name"
			read f
			git add "${f}"
			;;
			*)
		esac
	;;
	4)
		echo "Enter the Commit Message"
		read msg
		git commit -m "${msg}"
	;;
	5)
		echo
		echo "1.To Push Into Same Branch"
		echo "2.To Checkout the Branch"
		echo
		read br
		case $br in
			1)
				echo "Enter the Branch Name"
				read bn
				git push origin "${bn}"
			;;
			2)
				echo "Enter the Branch to Checkout"
				read bnc
				git checkout "${bnc}"
				git push origin "${bnc}"
			;;
			*)
		esac
	;;
	*)
esac
