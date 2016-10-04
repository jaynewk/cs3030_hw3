# This sed command replaces /'s with .'s in the president.csv file and then outputs the results
#        1         sp         2      sp         3        
s/\([0-9]\{1,2\}\)[/]\([0-9]\{1,2\}\)[/]\([0-9]\{2,4\}\)/\1.\2.\3/g
