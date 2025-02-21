#!/bin/bash

echo "Starting Submission Reminder Application..."

# Check if reminder.sh exists and is executable
if [ -x "app/reminder.sh" ]; then
    # Load functions
    source modules/functions.sh
    
    # Start the reminder application
    ./app/reminder.sh
else
    echo "Error: Cannot find or execute reminder.sh"
    exit 1
fi

echo "Application started successfully!"
