#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "Simple Interest Calculator"

read -p "Enter principal amount (P): " P
read -p "Enter rate of interest (R): " R
read -p "Enter time period in years (T): " T

# Calculate simple interest (supports decimal rates using awk)
SI=$(awk "BEGIN {printf \"%.2f\", ($P * $R * $T) / 100}")

echo "-----------------------------------"
echo "Principal (P): $P"
echo "Rate (R): $R"
echo "Time (T): $T"
echo "Simple Interest: $SI"
