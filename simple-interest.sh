#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Calculate simple interest
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "Simple Interest: $interest"
}

# Main script
echo "Simple Interest Calculator"
echo "Enter the principal amount:"
read principal
echo "Enter the rate of interest:"
read rate
echo "Enter the time period (in years):"
read time

calculate_simple_interest $principal $rate $time

