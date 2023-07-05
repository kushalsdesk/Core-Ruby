sum = 20
negative = -7
floorFloat = 22.4
ceilFloat = 22.7

# Arithmatic Operation

print 1+3
# Addition: output 4

print 1-2
# Subtraction: output -1

print 9/3
# Division: output 3

print 2*3
# Multiplication: output 6

print 2**3
# Exponentiation: output 8

print 16%9
# Modulo: output 7



#older way
puts ("My code is "+ sum.to_s)

puts("My code is #{sum}")  #Here it prints , no need to typecast the number to string

puts negative.abs();#absolute value
puts ("Ceiling value #{ceilFloat.ceil()}")
puts ("Floor value #{floorFloat.floor()}")
puts ("Round value #{ceilFloat.round()}")



