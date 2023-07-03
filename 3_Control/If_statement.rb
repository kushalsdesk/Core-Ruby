isMale = true

if isMale
    puts "You are a male"
else 
    puts "You are not a male"
end

isTall = false

if isMale and isTall
    puts "You are a male and tall"
    
elsif isMale and !isTall
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
