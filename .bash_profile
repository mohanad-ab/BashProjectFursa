# your solution here...
echo Hello $USER #Great the user
export COURSE_ID="DevOpsFursa"  # Define environment variable

# Check .token file permissions
if [ -e ~/.token ]; then
    permissions=$(stat -c "%a" ~/.token)
    if [ "$permissions" != "600" ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi
# Set umask
unmask 0077
# Add ~/usercommands to PATH
export PATH="$PATH:/home/$(whoami)/usercommands"
echo "The current date is: $(date -u +"%Y-%m-%dT%H:%M:%S%:z")"alias ltxt='ls *.txt'
# Script to create or clean ~/tmp directory
if [ -d ~/tmp ]; then
    rm -rf ~/tmp/*
else
    mkdir ~/tmp
fi

# Check if any process is listening on port 8080
if lsof -Pi :8080 -sTCP:LISTEN -t >/dev/null; then
    # Get the PID of the process
    PID=$(lsof -Pi :8080 -sTCP:LISTEN -t)
    # Kill the process
    kill $PID
    echo "Process bound to port 8080 (PID: $PID) killed."
else
    echo "No process is bound to port 8080."
fi


