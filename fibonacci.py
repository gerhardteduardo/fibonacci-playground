#!/usr/bin/env python3

# Functions

def fibonacci(n):
    if n == 1:
        return [0]
    
    sequence = [0, 1]
    for _ in range(2, n):
        sequence.append(sequence[-1] + sequence[-2])
    return sequence

# Main Code

def main():
    try:
        size = int(input("Fibonacci size: "))
        if size < 1:
            raise ValueError
    except ValueError:
        print("Error: Please enter an integer greater than 0.")
        return

    print("\nFibonacci Sequence:", fibonacci(size))

if __name__ == "__main__":
    main()
