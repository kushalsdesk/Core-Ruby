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
def get_day_name (day)
    day_name = ""
    case day
    when "mon"
        day_name= "Monday"
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


# when/then syntax

case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end

```

The code snippet provided demonstrates the use of a `case` statement in Ruby to determine the corresponding day name based on a given abbreviation.

The `get_day_name` method takes a parameter `day` representing the abbreviation of a day (e.g., "mon" for Monday) and returns the full name of the day (e.g., "Monday").

Inside the method, a `case` statement is used to evaluate the value of `day`. Depending on the value, the corresponding `when` clause is executed. For example, if `day` is "mon", the code under the `when "mon"` line will be executed, and the `day_name` variable will be set to "Monday". Similarly, for other abbreviations, the code under the corresponding `when` clause will set `day_name` to the appropriate day of the week.

Finally, the method returns the value of `day_name`, which is then printed using `puts` statements.

The second code snippet demonstrates a different use of the `case` statement, where the code execution happens directly after the `when` clause using the `then` keyword. It's a more concise way of writing the `case` statement when there's a single action to be performed for each case. In this case, it prints different messages based on the value of the `language` variable. If `language` is "JS", it prints "Websites!", if it's "Python", it prints "Science!", if it's "Ruby", it prints "Web apps!", and if none of those conditions match, it prints "I don't know!".

## If-Else [3_Control/If_statement.rb](3_Control/If_statement.rb)

```ruby
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


# simpler if statement
# if the block-statement is short

# expression if boolean


puts "Its true!" if true

=begin
An even more concise version of if/else is the ternary conditional expression. It’s called “ternary” because it takes three arguments: a boolean, an expression to evaluate if the boolean is true, and an expression to evaluate if the boolean is false.

The syntax looks like this:

boolean ? Do this if true: Do this if false

An example might be
=end

puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."

```

The code snippet provided demonstrates the use of conditional statements in Ruby.

The first block of code uses an `if` statement to check the value of the `isMale` variable. If `isMale` is `true`, it prints "You are a male." Otherwise, it prints "You are not a male."

The second block of code uses an `if` statement with multiple conditions. It checks the values of `isMale` and `isTall`. If both conditions are `true`, it prints "You are a male and tall." If `isMale` is `true` but `isTall` is `false`, it prints "You are a male and short." If none of the conditions match, it prints "You are neither a male nor tall."

The third block of code demonstrates a simpler form of the `if` statement when the block of code to execute is short. It uses the syntax `expression if boolean`. In this case, it prints "It's true!" if the boolean expression `true`.

The final block of code showcases the ternary conditional expression, which is a concise way to write an `if/else` statement. It has the form `boolean ? Do this if true : Do this if false`. In the given example, it checks if `3` is less than `4`. If it is, it prints "3 is less than 4!" Otherwise, it prints "3 is not less than 4."

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

1. **Creating and Accessing an Array:**

   - An array named `games` is created with three elements: "Forza", "NFS", and 100.
   - The contents of the `games` array are printed.
   - The first element of the `games` array is accessed using index 0 and printed.

2. **Adding Elements to an Array:**

   - An empty array named `nums` is created using the `Array.new` constructor.
   - Elements (7, 6, 8, 5, 2, 3, 4) are added to the `nums` array using the `push` method.
   - The contents of the `nums` array and its length are printed.

3. **Sorting and Modifying Arrays:**

   - The `nums` array is sorted using the `sort` method and stored in a new array named `nums2`.
   - The last element is removed from the `nums2` array using the `pop` method.
   - The modified `nums2` array is printed.

4. **Creating a Nested Array:**

   - A nested array named `array` is created with `nums2.reverse()` as its first element.
   - Additional elements, including another reversed `nums` array and two integers (11, 14), are added to the `array`.

5. **Flattening an Array:**

   - The `array` is flattened using the `flatten!` method, which modifies the array in-place.
   - The flattened `array` is printed.

6. **Checking for Element Existence:**
   - The `include?` method is used to check if the value 3 exists in the `array`.
   - The result of the check is printed.

These operations showcase common array manipulations, such as creating and accessing arrays, adding elements, sorting, modifying arrays, creating nested arrays, flattening arrays, and checking for element existence.

## Hash [4_Data_Structures/Hash.rb](4_Data_Structures/Hash.rb)

```ruby
=begin
    Hashes let us store data in a key-value pair
    Though everyhting in Ruby is an object
    We have multiple syntaxes to set the key
=end

my_hash = Hash.new

my_hash = {
    1 => "Random",
    :game => "AC",
    "desktop" => "Environment",
    key: "value"

}

puts my_hash

my_hashToArray = my_hash.to_a  # this would convert a string to n array

puts "my_hashToArray"
my_hashToArray.each do |ele|
    puts "The Array element is: #{ele}"
end
puts "myhashToArray end "

my_hashToArray.each do |key,value|
    puts " Key: #{key}, \n Value: #{value}"
end



=begin
    it was generally recommended to use
    the "hash rocket" (=>) syntax for creating hashes.
    But after 1.9 things start look like JS Object or Python Dictionary
    though everything in Ruby is Object but as this hash has other functionalities , I would still practice that hash rocket to respect the community and to read old docs and codebases
=end


# Symbols

=begin
    We can certainly use strings as Ruby hash keys; as we’ve seen, there’s always more than one way to do something in Ruby. However, the Rubyist’s approach would be to use symbols.
=end

my_first_symbol = :first # this is a symbol , and its immutable

# This converts a string to symbol and vice-versa

:sasquatch.to_s
# ==> "sasquatch"

"sasquatch".to_sym
# ==> :sasquatch

# or

"hello".intern
# ==> :hello

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]


symbols = Array.new

strings.each do |ele|
  symbols.push(ele.intern)
end

symbols.each do |ele|
  puts ele
end


# Becoming more selective by passing some conditions to filter the hash result

movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
  }
  # Add your code below!

  good_movies = movie_ratings.select { |name, rating | rating > 3}

 puts good_movies.select { |k,v|
    k == :skyfall
}


# Just working with eiher key or value
my_hash = { one: 1, two: 2, three: 3 }

# working with keys
my_hash.each_key { |k| print k, " " }
# working with values
my_hash.each_value { |v| print v, " " }


```

1. **Hashes:**

   - Hashes in Ruby allow storing data in key-value pairs.
   - An empty hash named `my_hash` is initialized using `Hash.new`.
   - Key-value pairs are added to the `my_hash` using different syntaxes, including integers, symbols, and strings as keys, and any Ruby objects as values.
   - The resulting hash is printed using `puts`.

2. **Converting Hash to Array:**

   - The `my_hash` is converted to an array using the `to_a` method.
   - The resulting array is stored in the variable `my_hashToArray`.
   - The array elements are printed using the `each` iteration.

3. **Symbols:**

   - Symbols in Ruby are immutable identifiers represented by a leading colon (`:symbol_name`).
   - The code demonstrates different ways to convert between symbols and strings.
   - An array of symbols is created by iterating over an array of strings and converting each element to a symbol using methods like `to_sym` or `intern`.

4. **Filtering Hash:**

   - The `movie_ratings` hash contains movie names as symbols and their corresponding ratings.
   - The `select` method is used on `movie_ratings` to filter movies with ratings greater than 3, creating a new hash called `good_movies`.
   - The `good_movies` hash is further filtered to select the movie with the key `:skyfall`, which is printed using `puts`.

5. **Working with Keys and Values:**
   - The `my_hash` contains key-value pairs.
   - The `each_key` method is used to iterate over the keys and print them.
   - Similarly, the `each_value` method is used to iterate over the values and print them.

These operations demonstrate the usage of hashes, converting between symbols and strings, filtering hashes based on specific conditions, and iterating over keys and values in a hash.

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

This Repo should contain the very fundamental knowledge of Ruby Programs...
Now The next focus should be Ruby on Rails to run Ruby in Web Development

Happy coding!
