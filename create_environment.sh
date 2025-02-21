#!/bin/bash

# Prompt the user for their name
echo "Enter your name"
read userName

# Define the main directory name
dirName="submission_reminder_${userName}"

# Create the main application directory
mkdir -p "$dirName"

#create the required subdirectories
mkdir -p "$dirName/app" "$dirName/modules" "$dirName/assets" "$dirName/config"

# Create required files
touch "$dirName/app/reminder.sh" "$dirName/modules/function.sh" "$dirName/assets/submission.txt" "$dirName/config/config.env" "$dirName/startup.sh"

# Add content to files
echo "#!/bin/bash" > "$dirName/app/reminder.sh"
echo "#!/bin/bash" > "$dirName/modules/functions.sh"
echo "#!/bin/bash" > "$dirName/startup.sh"

# Configuration file content
echo "# Configuration settings for the reminder app" > "$dirName/config/config.env"

# Make scripts executable
chmod +x "$dirName/app/reminder.sh"
chmod +x "$dirName/modules/functions.sh"
chmod +x "$dirName/startup.sh"

echo "Environment setup complete in directory: $dirName"
