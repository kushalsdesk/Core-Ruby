# Learning Ruby Basics
![Ruby](https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg)



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

### Drawing a Shape

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

### Strings [1_Introduction/strings.rb](1_Introduction/strings.rb)

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

### User_Input [1_Introduction/user_input.rb](1_Introduction/user_input.rb)

The code snippet above prompts the user to enter their name and then displays a personalized greeting.

```ruby
puts "Enter your name:"
name = gets.chomp()  # gets store the data in the variable and .chomp() will remove the extra newline character

puts "Hello #{name}!"
```

In this section, we explore how to take user input in Ruby.

### Variables [1_Introduction/variables.rb](1_Introduction/variables.rb)

```ruby
character_name = "Mike"  # string
character_age = 36  # integer

puts("Hello Mr.#{character_name} and your age is #{character_age}")

gpa = 3.4  # float
isMale = true  # boolean
flows = nil  # null (absence of value)
```

The code snippet above demonstrates the usage of variables in Ruby. It assigns values to different variables representing a character's name, age, GPA, gender, and a null value. The `puts` statement displays a greeting message using the assigned variables.

## Methods [2_Blocks/Methods.rb](2_Blocks/Methods.rb)

```ruby
def sayHi
    puts "Hi! to All"
end

def sayHello(name)
    puts "Hello #{name}"
end

sayHi
sayHello("Kushal")

def sayHelloCustom(name="Noone", age=0)
    puts "Hello #{name}, your age is #{age}"
end

sayHelloCustom
sayHelloCustom("Kushal", 23)

def cube(num)
    return num*num*num, 70, 90
end

puts cube(3)
puts cube(4)[2]

```

The code snippet above demonstrates the usage of methods in Ruby. It defines several methods, including sayHi, sayHello, sayHelloCustom, and cube. These methods illustrate different concepts such as function declaration, passing parameters, default parameter values, and return statements.

## Case Expression [3_Control/Case_expression.rb](3_Control/Case_expression.rb)

```ruby
def get_day_name(day)
    day_name = ""
    case day
    when "mon"
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednesday"
    when "thu"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    when "sat"
        day_name = "Saturday"
    when "sun"
        day_name = "Sunday"
    end

    return day_name
end

puts get_day_name("mon")
puts get_day_name("thu")
```

The code snippet above demonstrates the usage of a case expression in Ruby. The method get_day_name takes a parameter day and uses a case statement to determine the corresponding day name based on the given input. The method then returns the day name.

## If-Else [3_Control/If_statement.rb](3_Control/If_statement.rb)

```ruby
isMale = true

if isMale
    puts "You are a male"
else
    puts "You are not a male"
end

isTall = false

if isMale && isTall
    puts "You are a male and tall"
elsif isMale && !isTall
    puts "You are a male and short"
else
    puts "You are neither a male nor tall"
end
```

The code snippet above demonstrates the use of if statements in Ruby. It checks the values of the isMale and isTall variables and executes different code blocks based on the conditions.

## Array [4_Data_Structures/Array.rb](4_Data_Structures/Array.rb)

```ruby
games = Array["Forza", "NFS", 100]  #can store any type of data

puts "#{games}"

puts "#{games[0]}"  # accessing an element by index

# Creating a new empty array
nums = Array.new

# Adding elements to the array using the .push() method
nums.push(7, 6, 8, 5, 2, 3, 4)
puts "nums is: #{nums}"
puts "The length of nums is: #{nums.length}"

# Sorting the array using the .sort() method
nums2 = nums.sort()
puts "nums2 is: #{nums2}"

# Removing the last element from the array using the .pop() method
nums2.pop()
puts "The modified nums2: #{nums2}"

# Creating a nested array
array = [nums2.reverse()]

# Adding elements to the nested array
array.push(nums.reverse(), 11, 14)
puts "The nested array: #{array}"

# Flattening the array using the .flatten! method
array.flatten!
puts "The flattened array: #{array}"

# Checking if an element exists in the array using the .include?() method
puts "#{array.include?(3)}"
```

The code snippet above demonstrates the usage of arrays in Ruby. It creates arrays, adds elements, performs sorting and modification, creates a nested array, flattens the array, and checks for the existence of an element.

# Looping in Ruby

In this section, we explore different looping techniques in Ruby.

## For [5_Looping/for_loop.rb](5_Looping/for_loop.rb)

### Looping through numbers

#### 1. Using `for` loop and range

```ruby
for index in 0..5
    puts "Number: #{index}"
end
```

#### 2. Using `times` loop

```ruby

5.times do |index|
    puts "Number: #{index}"
end
```

### Looping through an array

```ruby
friends = Array["karen", "dev", "loius", "lara"]
```

#### 1. Using `for` loop

```ruby
for friend in friends
    puts friend
end
```

#### 2. Using `each` loop

```ruby
friends.each do |friend|
    puts "Friend: #{friend}"
end

```

### Looping through an array

```ruby
myHash = {
    :game => "AC",
    :desk => "MyDesk"
}

myHash.each do |key, value|
    puts "Key: #{key} \nValue: #{value}"
end

```

The code snippets above demonstrate various looping techniques in Ruby. They showcase looping through numbers using for and times loops, looping through an array using for and each loops, and looping through a hash using each loop.

## While [5_Looping/while_loop.rb](5_Looping/while_loop.rb)

### Simple while loop

```ruby
index = 1

while index <= 5
    puts "Index: #{index}"
    index += 1
end
```

# Game Library System

Welcome to the Game Collections System! This system allows you to manage your game library. Let's explore how it works.

## Code [6_Game/Game_library.rb](6_Game/Game_library.rb)

```ruby
my_games = {
  :AC => "Assassin's Creed",
  :NFS => "Need For Speed",
  :FF => "Fifa Series",
}

puts "Welcome to The Game Collections System"
puts "Are you ready to enter the system? [y/n]"

answer = gets.chomp.downcase()
isReady = false

if answer == "y"
  isReady = true
end

inLoop = true

if isReady
  while inLoop
    puts "-- Type 'add' to add a game."
    puts "-- Type 'update' to update a game."
    puts "-- Type 'display' to display all games."
    puts "-- Type 'delete' to delete a game."
    puts "-- Type 'quit' to exit the system."

    choice = gets.chomp.downcase()
    case choice
    when "add"
      puts "Enter the game abbreviation as a symbol:"
      game_name = gets.chomp.upcase()
      if my_games[game_name.to_sym].nil?
        puts "Enter the original name of the game:"
        original_name = gets.chomp
        my_games[game_name.to_sym] = original_name
        puts "The game has been added successfully."
      else
        puts "The game already exists!"
      end
    when "update"
      puts "Which game do you want to update?"
      game_name = gets.chomp.upcase()
      if my_games[game_name.to_sym].nil?
        puts "Game not found."
      else
        puts "Enter the new original name:"
        original_name = gets.chomp
        my_games[game_name.to_sym] = original_name
      end
    when "display"
      my_games.each do |symbol, title|
        puts "#{symbol} => #{title}"
      end
    when "delete"
      puts "Which game do you want to delete?"
      game_name = gets.chomp.upcase()
      if my_games[game_name.to_sym].nil?
        puts "Game not found."
      else
        my_games.delete(game_name.to_sym)
        puts "The game has been deleted."
      end
    when "quit"
      inLoop = false
      puts "Hope you enjoyed using the Game Collections System!"
    else
      puts "Invalid input. Please type your options carefully."
    end
  end
else
  puts "See you next time!"
end
```

The code above represents a game library system where you can add, update, display, and delete games from your collection. It uses a hash called my_games to store game abbreviations as symbols and their corresponding original names. The user is prompted to enter options and perform actions based on their choices. The system continues running until the user chooses to quit.

The "Game Library System" is a program that allows users to manage a collection of games. Let's go through the code and understand how it works.

## Code Explanation

1. First, a hash called `my_games` is defined to store game abbreviations as symbols and their corresponding original names.

2. The user is prompted with a welcome message and asked if they are ready to enter the system. The user's response is stored in the `answer` variable.

3. If the user enters "y", the `isReady` variable is set to `true`.

4. The `inLoop` variable is set to `true` to start the main loop of the program.

5. If the user is ready (`isReady` is `true`), the program enters the main loop.

6. Inside the loop, the user is presented with options to add, update, display, delete games, or quit the system.

7. The user's choice is stored in the `choice` variable.

8. Using a `case` statement, the program performs different actions based on the user's choice.

   - If the choice is "add", the user is prompted to enter a game abbreviation and its original name. The game is added to the `my_games` hash if it doesn't already exist.

   - If the choice is "update", the user is asked which game they want to update. If the game is found, the user can enter a new original name for the game, and it is updated in the `my_games` hash.

   - If the choice is "display", the program iterates over the `my_games` hash and prints each game abbreviation and its original name.

   - If the choice is "delete", the user is asked which game they want to delete. If the game is found, it is removed from the `my_games` hash.

   - If the choice is "quit", the `inLoop` variable is set to `false`, and the program exits the loop.

   - If the choice is anything else, an invalid input message is displayed.

9. After the loop ends, if the user was ready to enter the system, a farewell message is displayed. Otherwise, a message indicating that they will see you next time is shown.

The code allows users to interact with the game library system, add new games, update existing games, display the games in the library, delete games, and quit the system.

This system provides a basic implementation for managing a game library collection. You can further customize and enhance it based on your specific needs and requirements.

Happy gaming!

## Conclusion

Congratulations on completing the introduction chapter of learning Ruby basics! You have learned how to print messages and draw simple shapes in Ruby. This is just the beginning of your journey. Stay tuned for more exciting concepts and challenges!

Feel free to explore the repository further and experiment with the provided code examples.

Happy coding!
