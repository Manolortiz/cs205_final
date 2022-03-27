# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.

BEGIN{FS="\t"} # This is the beginning of the script. The 't' represents what type of file. 
{
if(NR!=1){ # This statement will run if the number of lines is not equil to 1. 
sum=sum+1 # Variable that Counts the number of lines in the spreadsheet. In this case the number of pokemon.
hp+=$6 # Variable that Adds up the total in row 6 of the spreadsheet. Which is the hp in this case.  
attack+=$7 # Variable that Adds up the total in row 7 of the spreadsheet. Which is the attack  in this case.

}
}
END{ # This is the end of the script.
printf( "======= SUMMARY OF POKEMON.DAT ======\n   Total Pokemon: %d\n   Avg. HP: %d\n   Avg. Attack: %d\n======= END SUMMARY =======",sum,hp/sum,attack/sum)
} # The printf function will print to standart out. It includes sum, hp, and attack variables. 

