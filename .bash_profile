# your solution here...

# say hello to the user the moment a new user is reated
echo "Hello $USER"

# define an environment variable COURSE_ID using the export
export COURSE_ID=DevOpsFursa

# Check .token file permissions
#-c "%a only displays the permissions in octal
if [ -f ~/.token ]; then
    token_perm=$(stat -c "%a" ~/.token)
    if [ "$token_perm" != "600" ]; then
         echo "Warning: .token file has too open permissions"
    fi
fi

# new default umask to 007
umask 007

# Add ~/usercommands to PATH , we saw this command with alon in class
export PATH=$PATH:/home/$USER/usercommands

echo "The current date is: $(date -u +"%Y-%m-%dT%H:%M:%S%:z")"

#create a new shortcut instead of using the exten
alias ltxt='ls *.txt'

if [ -d ~/tmp ]; then # Create directory temp if it already exists

    rm -rf ~/tmp/*
else
    mkdir ~/tmp
fi

# Kill process connected to port to port 8080
fuser -k 8080/tcp > /dev/null 2>/dev/null





###########################################################################################


