# Learning Ruby Basics

Welcome to the "Learning Ruby Basics" repository! This repository is designed to help you grasp the fundamentals of the Ruby programming language. Let's dive into the concepts covered so far.

## Introduction to Ruby

### First Program [1_Introduction/First_Program.rb](1_Introduction/First_Program.rb)

In this chapter, we begin by introducing the basics of Ruby programming. Let's start with printing a message using the `print` and `puts` methods.

### Printing a Message

To print a message in Ruby, you have a couple of options. The `print` method outputs the specified text on a single line, while the `puts` method adds a new line after printing.

Here's an example of using the `print` method to display the message "Hello World From Ruby":

```ruby
print("Hello World From Ruby")
```

Output:

```
Hello World From Ruby
```

To print on a new line, you can use the `puts` method:

```ruby
puts
```

Output:

```

```

The `puts` method without any argument creates a new line.

## Drawing a Shape

In this section, we explore drawing a shape using ASCII characters. Let's create a triangle shape:

```ruby
puts "      /|"
puts "     / |"
puts "    /  |"
puts "   /   |"
puts "  /____|"
```

Output:

```
      /|
     / |
    /  |
   /   |
  /____|
```

The code snippet above generates a triangular shape using ASCII characters.

### Math and Numbers[1_Introduction/math_n_num.rb](1_Introduction/math_n_num.rb)

```ruby
sum = 20
negative = -7
floorFloat = 22.4
ceilFloat = 22.7

# Older way

puts ("My code is " + sum.to_s)

puts ("My code is #{sum}") # Here it prints, no need to typecast the number to string

puts negative.abs() # Absolute value
puts ("Ceiling value #{ceilFloat.ceil()}")
puts ("Floor value #{floorFloat.floor()}")
puts ("Round value #{ceilFloat.round()}")
```

Output:

```
My code is 20
My code is 20
7
Ceiling value 23
Floor value 22
Round value 23
```

The code snippet above demonstrates various mathematical operations and number manipulation in Ruby.

## Strings [1_Introduction/strings.rb](1_Introduction/strings.rb)

```ruby
phrase = "Acrogueone"  # string

# Applying methods to the variable
puts phrase.upcase() # to uppercase
puts phrase.downcase() # to lowercase
puts phrase.index("r") # index of a specific letter

# Targeting a letter with the index
puts phrase[3].upcase()

# Fun
puts phrase[phrase.index("r")] # It will return the same value
```

Output:

```
ACROGUEONE
acrogueone
4
O
r
```

The code snippet above demonstrates different string operations such as converting the string to uppercase and lowercase, finding the index of a specific letter, and targeting a letter using the index.

## User_Input [1_Introduction/user_input.rb](1_Introduction/user_input.rb)

The code snippet above prompts the user to enter their name and then displays a personalized greeting.

```ruby
puts "Enter your name:"
name = gets.chomp()  # gets store the data in the variable and .chomp() will remove the extra newline character

puts "Hello #{name}!"
```

In this section, we explore how to take user input in Ruby.

## Conclusion

Congratulations on completing the introduction chapter of learning Ruby basics! You have learned how to print messages and draw simple shapes in Ruby. This is just the beginning of your journey. Stay tuned for more exciting concepts and challenges!

Feel free to explore the repository further and experiment with the provided code examples.

Happy coding!
