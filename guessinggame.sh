function prompt {
    echo "How many files are there in the current directory?"
}

# count number of files including directory files, not including files starting with .
filenum=$(ls -1 | wc -l) 

notguessed=true

while [[ "$notguessed" == true ]]
do
    prompt
    read guess
    if [[ $guess -eq $filenum ]]
    then
        echo "You guessed correctly. Congratulations!"
        notguessed=false
    elif [[ $guess -lt $filenum ]]
    then
        echo "Your guess is too low"
    elif [[ $guess -gt $filenum ]]
    then
        echo "Your guess is too high"
    fi
done
