# Root Finding Programs
## Method 1: Bisection
The first method of finding roots in this folder is through the bisection method. This program will perform the bisection method when giving a function, minimum guess, maximum guess, and a percent error to stop at.
### Inputs
* func - a function should be inserted with only one variable
* xmin - the leftbound guess of the function at x
* xmax - the rightbound guess of the function at x
* ed - the relative error that you wish for the program to stop at
### Outputs
* root - gives the value of the root in x
* ea - gives the error that the program stopped at
### Words of warning
This code is currently out of date and has a few bugs in it, and I will edit in the future, but feel free to change it now on your own if I don't get to it beforehand
## Method 2: False Position
Given a function, a left bound, and a right bound as the minimum amount of inputs, this program will use the false position method to calculate the root of the function between the bounds. Additonally, the error can be defined, or the maximum amount of iterations can also be defined to determine how accurately you wish the program to get
### Inputs
* func - a function value
* xl - the lower guess of x
* xu - the upper guess of x
* es - the relative error required to stop (defaults to .0001%)
* maxit - the maximum iterations to be performed (defaults to 200)
### Outputs
* root - gives the root of the function
* fx - gives the y value of the root
* ea - tells what percent error the program stopped at
* iter - tells how many iterations were performed
## Method 3: Secant
This function determines the root through two initial guess, and then will calculate the middle value between the last two points all the way until it reaches the root.
### Inputs
* func - a function handler variable that only contains one input
* x0 - the first guess. Can be any integer
* x1 - the second guess. Can be any integer
* i - the maximum number of iterations to perform (defaults to 200)
* es - the percent error to determine when to stop (defaults to .001%)
### Outputs
* root - gives the root of the function
* iterations - gives how many iterations were performed
* percentError - gives the percent error when it stopped
## Method 4: Modified Secant
This method is similar to Secant, however only requires one guess.
### Inputs
* func - a function handler variable that only conatins one input
* x0 - the guess
* delta - any integer can be used. A smaller one will result in more accuracy
* i - iterations to be performed before quitting
* es - the percent error before it should quit
### Outputs
* root - gives the root of the function
* iterations - gives the amount of iterations performed
* percentError - gives the percent error when the program quit
