echo "How many files do you think are in the current directory?:"
read response

# This exercise can be done without functions.
function estimate {
  echo "You have made an initial guess of $response"
}

estimate
answer=$(ls -1 | wc -l)

while [[ $answer -ne $response ]];
do
	if [[ $answer -lt $response ]]
	then
		echo "Incorrect guess. Guess was too high"
	else
		echo "Incorrect guess. Guess was too low"
	fi
	read response 
done
echo "Correct guess. There are $response files in this current directory."
