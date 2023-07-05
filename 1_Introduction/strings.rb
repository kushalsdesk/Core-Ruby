phrase = "Acrogueone"  #string

#now we can apply methods to the variabel
puts phrase.upcase() #to uppercase
puts phrase.downcase() #to lowercase
puts phrase.index("r") #index of a specific letter

#we can also target the letter with the index
puts phrase[3].upcase()

#fun
puts phrase[phrase.index("r")]  #huh! it will return the same value.....not funny i guess

#String Interpolation
age = 30

print "Hi, my name is Cody, and I am #{age} years old"
# "Hi, my name is Cody, and I am 30 years old"

