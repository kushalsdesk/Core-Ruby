## For loop is needed when the looping time is known

# Looping through number
# 1

## with `..` where it declares the range
# Inclusive range
for index in 0..5
    puts "Number: #{index}"
end

## with `...` where it just excludes the last value
# Exclusive range
for num in 1...10
  puts num
end

# 2

5.times do | index |
    puts "Number: #{index}"
end


# each method

data = [3, 6, 9, 12]

data.each do |num|
  puts "The number is: #{num}"
end

# Inclusive range

(3..5).each do |i|
  puts i
end

# Exclusive range
(3...5).each do |i|
  puts i
end


# next method
for i in 1..10
  next if i % 2 == 0
  puts i
end

# loop method

num = 1
loop do
  puts "We are in the loop!"
  num += 1
  break if num > 3
end

puts "We have exited the loop!"



