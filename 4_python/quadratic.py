# Script developed to solve the roots of quadratic equation
import math
import sys

# main() here our program will be started, and all required data asked
def main():
    print("Please type arguments for quadratic equation: ax^2+bx+c=0")

# ask_value(message) this function should ask user for input, and then return variable.
# Good to have additional input validation here.
def ask_value():
    try:
        a = int(input("Enter first argument: "))
        b = int(input("Enter second argument: "))
        c = int(input("Enter third argument: "))
    except:
        print("The arguments must be an integer type")
        sys.exit
    else:
        if type(a) == int and type(b) == int and type(c) == int:
           return a, b ,c
            

# discriminant(a,b,c) no much, no less just return discriminant
def discr(a,b,c):
    d = (pow(b, 2)) - 4*a*c
    return(d)

# roots(D,a,b) will show on the screen all acceptable roots
def roots(d,a,b):
    if d > 0:
        x1 = (-b - math.sqrt(d)) / (2*a)    
        x2 = (-b + math.sqrt(d)) / (2*a)
    
    elif d == 0:
        x1 = -b/(2*a)
        x2 = x1

    elif d < 0:
        print("D < 0 ---> No roots!")
        sys.exit()

    return x1, x2
    
    # Option for reducing numbers after dot in roots answer
    # if x1 >= x2:
    #     return round(x2, 4), round(x1, 4)
    
    # else:
    #     return round(x1, 4), round(x2, 4)
    
    

    
# solv_square(a,b,c) this function should contain inside discriminant
# and roots functions
def solv_square(a,b,c):
    d = discr(a, b, c)
    x1, x2 = roots(d, a ,b)
    print("Discriminant is D = ", d)
    print("Roots are: ", "x1 =", x1, "and", "x2 =", x2)

# Ask for arguments
main()

# Define arguments a, b, c
a, b, c = ask_value()

# Show results of equation
solv_square(a, b, c)