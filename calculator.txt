#!/bin/bash
echo "Enter two numbers:"
read num1
read num2

echo "Select operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read choice

calculate() {
    case $choice in
        1) echo "Result: $((num1 + num2))";;
        2) echo "Result: $((num1 - num2))";;
        3) echo "Result: $((num1 * num2))";;
        4) echo "Result: $((num1 / num2))";;
        *) echo "Invalid choice";;
    esac
}

calculate $choice
