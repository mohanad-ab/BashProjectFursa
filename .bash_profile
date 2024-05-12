# your solution here...
echo Hello $USER #Great the user 1
export COURSE_ID="DevOpsFursa"  # Define environment variable2

# Check .token file permissions 3
if [ -e ~/.token ]; then
    permissions=$(stat -c "%a" ~/.token)
    if [ "$permissions" != "600" ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi
# Set umask4
unmask 0077




# Add ~/usercommands to PATH 5
export PATH=$PATH:/home/$USER/usercommands# Script to create or clean ~/tmp directory
# add the date 6
echo "The current date is: $(date -u +"%Y-%m-%dT%H:%M:%S%:z")"



#create a new shortcut instead of using the part
alias ltxt='ls *.txt' #for the same outppt

# Create directory temp if it already exists then delete every thing inside it
if [ -d ~/tmp ]; then
    rm -rf ~/tmp/*
else
    mkdir ~/tmp
fi

# Kill process connected to port to port 8080
fuser -k 8080/tcp > /dev/null 2>/dev/null



