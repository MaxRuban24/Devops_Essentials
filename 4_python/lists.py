lst = [ 1, 2, "Hi there", True, 3.5, 8 ]
lst.pop(1)
lst.append("Freedom")
print(len(lst))
print("-----------------------")
for item in lst:
    print(item)

print("+++++++++++++++++++++++++++++++++++++")

tlp = (5, 10 , 0, 12)
(max, alex, alien, olga) = tlp
print(max, alex)

print("+++++++++++++++++++++++++++++++++++++")

st = {"apple", "pear", "cherry", "raspberry", "cherry"}
print(st)
print(len(st))

print("+++++++++++++++++++++++++++++++++++++")

dict = {
    "brand": "Mazda",
    "model": "CX-3",
    "year": 2018,
    "electric": False,
    "colors": ["red", "grey", "blue", "black"]
}
print(dict["brand"])
print(dict["colors"])
print(dict)