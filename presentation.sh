#!/bin/bash

# Function to wait for user input to proceed
wait_for_input() {
    read -n 1 -s -r -p "Press any key to continue..."
    echo
}

# Slide 1: Introduction
tput clear
tput cup 5 10
echo "DevOps Project Presentation"
tput cup 7 10
echo "Project: Log Compression Automation"
wait_for_input

# Slide 2: Requirements
tput clear
tput cup 5 10
echo "Requirements:"
tput cup 7 10
echo "1. Golang installed on your system."
tput cup 8 10
echo "2. A directory containing log files."
wait_for_input

# Slide 3: Golang Program
tput clear
tput cup 5 10
echo "Golang Program: compress_logs.go"
tput cup 7 10
cat compress_logs.go
wait_for_input

# Slide 4: Bash Script
tput clear
tput cup 5 10
echo "Bash Script: compress_logs.sh"
tput cup 7 10
cat compress_logs.sh
wait_for_input

# Slide 5: Execution
tput clear
tput cup 5 10
echo "Executing the Project"
tput cup 7 10
echo "./compress_logs.sh"
wait_for_input

# Slide 6: Thank You
tput clear
tput cup 5 10
echo "Thank You!"
tput cup 7 10
echo "Happy Automating!"
wait_for_input

# End of presentation
tput clear

