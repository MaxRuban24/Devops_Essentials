from distutils.ccompiler import show_compilers
import sys
import time

map = [
    [1, 1, 1, 1, 1, 2, 1, 1],
    [1, 0, 1, 0, 0, 0, 0, 1],
    [1, 0, 0, 0, 1, 1, 0, 1],
    [1, 1, 0, 1, 1, 0, 1, 1],
    [1, 0, 0, 0, 0, 0, 0, 1],
    [1, 1, 1, 1, 1, 1, 1, 1]
]

def showMap():
    print()
    for row in map:
        for cell in row:
            print(cell, end="")
        print()

def action(x, y):
    if map [y] [x] == 2:
        showMap()          # make output little bit more user-friendly - show only the result of work
        print("FINISHED!")
        sys.exit()
    if map [y] [x] == 0:
        map[y] [x] = "*"
        # time.sleep(1)
        AI(x,y)

def AI(x,y):
    # showMap()            # shows each step until finished
    action(x+1, y)
    action(x-1, y)
    action(x, y+1)
    action(x, y-1)

AI(1,4)