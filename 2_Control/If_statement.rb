isMale = true

if isMale
    puts "You are a male"
else
    puts "You are not a male"
end

isTall = false

if isMale && isTall    # && and operator
    puts "You are a male and tall"

elsif isMale || !isTall  # or operator
    puts "You are a male and short"
else
    puts "You are neither a male nor tall"
end


# Unless
hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

print "Enter a number"
number = gets.chomp.to_i
unless number >= 10
  puts "number is less than 10."
end

# Comparison operator

a = 1;
b = 2;
c = 2;

puts a > b;
puts a < b;
puts b >= c;
puts a <= c;
puts b == c;

# Output:
# false
# true
# true
# true
# true
