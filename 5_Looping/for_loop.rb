## For loop is needed when the looping time is known

# Looping through number
# 1

## with `..` where it declares the range 
for index in 0..5
    puts "Number: #{index}"
end

## with `...` where it just excludes the last value
for num in 1...10
  puts num
end

# 2

5.times do | index |
    puts "Number: #{index}"
end


# Looping through array
friends = Array["karen", "dev", "loius", "lara"]

#1
for friend in friends
    puts friend
end
#2 
friends.each do |friend|
    puts "Friend: #{friend}"
end

# Looping through hash
 
myHash = {
    :game => "AC",
    :desk => "MyDesk"
}

myHash.each do |key,value|
    puts "key: #{key} \n value: #{value}"
end


