# While loop is a simple Entry Control Loop
# We need while loop where the looping time is unknown


index = 1

while index <= 5
    puts "index: #{index}"
    index += 1
end

=begin
    In Ruby, the until keyword is used to create a loop that executes a block of code repeatedly until a certain condition becomes true.
    It is the opposite of the while loop, which executes the block of code while a condition is true.
=end


counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter += 1
end



