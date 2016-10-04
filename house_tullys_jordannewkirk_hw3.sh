#!/bin/bash - 
#===============================================================================
#
#          FILE: house_tullys_jordannewkirk_hw3.sh
# 
#         USAGE: ./house_tullys_jordannewkirk_hw3.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jordan Newkirk (), Steven Nye (),
#       CREATED: 09/29/2016 12:19
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an er

#Declaration of usage function
usageState()
{
	echo "Usage: ./house_tullys_jordannewkirk.sh [-a awkFile] [-s sedFile] [-i inputFile]"
    echo "All arguments are required"
} 

#Declaration of help function
helpFun()
{
	if [[ "$1" == "--help" ]]
	then
		echo "Usage ./house_tullys_jordannewkirk --help"
		echo "--help Print this help message"
		echo "-a specifies the awk file"
		echo "-s specifies the sed file"
		echo "-i specifies the input file"
		echo "With no arguments it provides a usage statement"
		exit
	fi
}
 
#call function(s)
helpFun "$1"

#start getopts
while getopts ":a:s:i:" opt
do
	case $opt in
		a)
			AWKFILE=$OPTARG
			;;
		s)
			SEDFILE=$OPTARG
			;;
		i)
			INPUTFILE=$OPTARG
			;;
		\?)
			echo "Invalid argument, exiting..."
			exit 1
			;;
	esac
done



exit 0
