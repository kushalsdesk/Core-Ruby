# Learning Ruby Basics

[!Ruby](https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg)

Welcome to the "Learning Ruby Basics" repository! This repository is designed to help you grasp the fundamentals of the Ruby programming language. Let's dive into the concepts covered so far.

# Installation

1 .Choose an Installation Method: There are multiple **ways to install Ruby**:

- **Package Managers**: Some operating systems have package managers that simplify the installation process. For example, on Ubuntu or Debian-based systems, you can use `apt-get`:

```console
  sudo apt-get install ruby-full
```

- **Ruby Version Manager (RVM)**: RVM allows you to manage multiple Ruby versions on your system. It's useful if you need to switch between different Ruby versions easily. To install RVM, you can use the following command:

```console
  \curl -sSL https://get.rvm.io | bash -s stable
```

- **RubyInstaller (Windows)**: If you're using Windows, RubyInstaller provides an executable installer that simplifies the installation process. You can download the installer from the [RubyInstaller.](https://rubyinstaller.org/)

- **rbenv (macOS and Linux)**: rbenv is another popular Ruby version manager that allows you to install and manage different Ruby versions. You can install rbenv using a package manager like Homebrew (macOS) or a Git clone (Linux).

**Verify the Installation**: Once the installation is complete, open a terminal or command prompt and run the following command to verify that Ruby is installed correctly:

```console
  ruby --version
```

This command should display the version of Ruby you installed, indicating that the installation was successful.

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

```ruby

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

```

The code snippet above demonstrates various mathematical operations and number manipulation in Ruby.

### Strings [1_Introduction/strings.rb](1_Introduction/strings.rb)

```ruby
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

## Case Expression [2_Control/Case_expression.rb](2_Control/Case_expression.rb)

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

## If-Else [2_Control/If_statement.rb](2_Control/If_statement.rb)

```ruby
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



```

The given code demonstrates various control flow statements and comparison operators in Ruby. Here's an explanation of each part:

1. The variable `isMale` is assigned a boolean value of `true`.

2. An `if` statement is used to check the value of `isMale`. If it evaluates to `true`, the message "You are a male" is printed; otherwise, "You are not a male" is printed.

3. The variable `isTall` is assigned a boolean value of `false`.

4. Another `if` statement is used to check multiple conditions using the logical `&&` (and) operator:

   - If both `isMale` and `isTall` are `true`, the message "You are a male and tall" is printed.
   - If `isMale` is `true` and `isTall` is `false`, the message "You are a male and short" is printed.
   - If neither condition is met, the message "You are neither a male nor tall" is printed.

5. The `unless` statement is the opposite of `if`. If the condition after `unless` evaluates to `false`, the corresponding block of code is executed; otherwise, the `else` block is executed. In the first `unless` statement, since `hungry` is `false`, the message "I'm writing Ruby programs!" is printed.

6. The `gets.chomp.to_i` line prompts the user to enter a number and converts the input to an integer.

7. Another `unless` statement is used to check if the number entered is less than 10. If it is, the message "number is less than 10" is printed.

8. The code demonstrates various comparison operators (`>`, `<`, `>=`, `<=`, `==`) by comparing the values of variables `a`, `b`, and `c`. The result of each comparison is printed to the console.

## Looping

### `for` loop [3_Looping/for_loop.rb](3_Looping/for_loop.rb)

```ruby
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

```

1. `for` loops:

   - The first example shows a `for` loop using an inclusive range (`0..5`) to iterate over the values from 0 to 5. The loop prints each value.
   - The second example uses an exclusive range (`1...10`) to iterate over the values from 1 to 9, excluding 10.

2. The `times` method:

   - The `times` method is called on a number (in this case, 5) and takes a block with an index variable. It executes the block the specified number of times, with the index starting from 0. The loop prints the value of the index.

3. The `each` method:

   - The `each` method is called on an array (`data`) and takes a block with a variable (`num`). It iterates over each element in the array and executes the block for each element. The loop prints each element of the array.

4. Ranges with `each` method:

   - Two examples demonstrate the use of the `each` method with ranges. The first uses an inclusive range (`3..5`), and the second uses an exclusive range (`3...5`). Both loops print the values within the respective ranges.

5. The `next` keyword:

   - The `next` keyword is used to skip the rest of the current iteration and move to the next iteration in the loop. In this example, the loop iterates from 1 to 10, but only odd numbers are printed because the `next` keyword is used when the number is even.

6. The `loop` method:
   - The `loop` method creates an infinite loop that continues executing until a `break` condition is met. In this example, the loop prints "We are in the loop!" and increments the `num` variable. It breaks out of the loop when `num` becomes greater than 3. The message "We have exited the loop!" is printed after the loop exits.

### `while` loop [3_Looping/while_loop.rb](3_Looping/while_loop.rb)

```ruby
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

```

1. `while` loop:

   - The `while` loop is an entry control loop that executes a block of code as long as a certain condition remains true.
   - In the example, the loop runs as long as the `index` variable is less than or equal to 5. The loop prints the current value of `index` and increments it by 1 on each iteration.

2. `until` loop:
   - The `until` loop is the opposite of the `while` loop. It executes a block of code repeatedly until a certain condition becomes true.
   - In the example, the loop runs until the `counter` variable becomes greater than 10. The loop prints the current value of `counter` and increments it by 1 on each iteration.

Both loops are entry control loops, meaning that the condition is checked before entering the loop. If the condition is initially false, the loop is never executed. The looping time in these cases is determined by the condition becoming false (for `while` loop) or true (for `until` loop).

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

   - `!` bang operator , When applying methods to any object the method dont modify the original, creats a new one, where with operator it permanently modifies the original

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

# Looping through hash

myHash = {
    :game => "AC",
    :desk => "MyDesk"
}

myHash.each do |key,value|
    puts "key: #{key} \n value: #{value}"
end



my_hashToArray.each do |key,value|
    puts " Key: #{key}, \n Value: #{value}"
end



=begin
    it was generally recommended to use
    the "hash rocket" (=>) syntax for creating hashes.
    But after 1.9 things start look like JS Object or Python Dictionary
    though everything in Ruby is Object but as this hash has other functionalities , I would still practice that hash rocket to respect the community and to read old docs and codebases
=end


### Symbols
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

# Add your code below!

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

## Methods [5_Blocks,Procs,Lambdas/Methods.rb](5_Blocks,Procs,Lambdas/Methods.rb)

```ruby
# "def" for declaration, no "()" needed if no param passed
def sayHi
    puts "Hi! to All"
end  # to declare function end

def sayHello(name)      # "()" for params to be passed
    puts "Hello #{name}"
end

sayHi    # function call
sayHello("Kushal")  # function call with param


# passing default value to parameters if they are optional

def sayHelloCustom(name="Noone", age = 0 )
    puts ("Hello #{name}, your age is #{age}")
end

sayHelloCustom
sayHelloCustom("Kushal", 23)


# return statement

def cube(num)
    return num*num*num, 70 , 90  # passing some numbers, may other codeblocks can be passed(!know)
end

puts cube(3)  #Passing and calling

#can also get specific output from the return
puts cube(4)[2]


# Method  Chaining

name = "Kushal".downcase.reverse.upcase

puts name


# Combined Comparison Operator

puts "Keanu" <=> "Adrianna" # The first letters of each word are compared in ASCII order and since "K" comes after "A", 1 is printed.

puts 1 <=> 2 # -1

puts 3 <=> 3 # 0

#<=> can also be used inside of a block and to sort values in descending order:
my_array = [3, 0, 8, 7, 1, 6, 5, 9, 4]
my_array.sort! { |first_num, second_num| second_num <=> first_num }
print my_array
#Output => [9, 8, 7, 6, 5, 4, 3, 1, 0]


```

1. **`sayHi` Method**: This method is defined without any parameters. It simply prints the string "Hi! to All" to the console.

2. **`sayHello` Method**: This method takes one parameter `name` and prints a greeting message with the provided name. It uses string interpolation to include the value of `name` in the output.

3. **`sayHelloCustom` Method**: This method demonstrates the use of default parameter values. It takes two parameters, `name` and `age`, with default values of "Noone" and 0 respectively. If no arguments are provided when calling this method, it will use the default values. It prints a message that includes the provided `name` and `age` values using string interpolation.

4. **`cube` Method**: This method takes one parameter `num` and calculates the cube of the given number. It uses the `return` keyword to return multiple values: the cube of `num`, the number 70, and the number 90 When calling this method, you can capture and use the returned values.

5. The `puts` statements demonstrate the usage of the methods. They call the methods with different arguments and display the returned values or execute the method's code.

6. Method chaining is a technique where multiple method calls are chained together in a single line of code, with each method operating on the result of the previous method. In your example, the `downcase` method is called on the string "Kushal" to convert it to lowercase, then the `reverse` method is called to reverse the string, and finally, the `upcase` method is called to convert the reversed string to uppercase. The result is a string with the reversed uppercase version of the original name.

7. **Ruby Combined Comparison Operator**
   In Ruby, the combined comparison operator, `<=>`, also known as the `spaceship operator` is used to compare two objects. It returns 0 if the first operand equals the second, 1 if the first operand is greater than the second, and -1 if the first operand is less than the second.

## Blocks,Procs,Lambdas [5_Blocks,Procs,Lambdas/B_P_L.rb](5_Blocks,Procs,Lambdas/B_P_L.rb)

```ruby
new_line = "____________________________\n"

# Blocks
puts "Blocks"

my_numbers = [1, 2, 3, 4, 5]

my_numbers.each {
  |number|
  puts "Printing the number: #{number}"
}

puts new_line

def yield_me_bb
  puts "I'm the method"
  yield # Rails application.html.erb files use this
  puts "I'm the method again"
end

yield_me_bb { puts "I'm the interrupting cow" }

# Procs
puts new_line
puts "Procs"

proc_me = Proc.new { puts "I'm a proc" }
proc_me.call

proc_me_twice = Proc.new { |a, b| puts "a + b = " + (a + b).to_s }

proc_me_twice.call(2, 3)
puts new_line

def proc_me_like_a_hurricane
  proc_demo = Proc.new { return "I'm a hurricane" }
  # proc_demo = Proc.new { puts "I'm a hurricane" }
  proc_demo.call # This is kinda just a return statement right here.
  return "I'm a gentle breeze"
end

puts proc_me_like_a_hurricane

# Lambdas
puts new_line
puts "Lambdas"

lambdas_bread = lambda { puts "I'm a lambda" }
lambdas_bread.call # Output: I'm a lambda

def i_wont_be_back
  lambda_demo = lambda { return "Only I print!" }
  lambda_demo.call
  "I lied, I'm back." # Reached
end

puts i_wont_be_back # Output: I'll be back.

# Arrow functions
puts new_line
puts "Arrow Functions"

lambda_demo = -> { puts "I'm a lambda" }
lambda_demo.call # Output: I'm a lambda

lambda_demo2 = ->(a, b) { puts "a + b = " + (a + b).to_s }
lambda_demo2.call(2, 3) # Output: a + b = 5

# Collect Method
puts new_line
puts "Collect Method, x * 2"

numbers = [1, 2, 3, 4, 5]
puts numbers.collect { |number| "Printing the number * 2: #{number * 2}" } # Output: [2, 4, 6, 8, 10]

# Ampersand notation
puts new_line
puts "Ampersand notation"

def ampersand_demo(&block)
  block.call
end

ampersand_demo { puts "I'm the block" } # Output: I'm the block

```

1. **Blocks:** This section demonstrates the use of blocks in Ruby. A block is a piece of code that can be executed one or more times. It is defined within curly braces or do...end keywords and can be passed to methods for execution.

2. **Procs:** Procs are saved blocks that can be reused. They are objects that can be assigned to variables and called later. Procs can take parameters and execute a series of statements when invoked.

3. **Lambdas:** Lambdas are similar to procs, but with some slight differences in behavior. Like procs, they are saved blocks that can be reused. Lambdas are objects that can be assigned to variables and called later. They can also take parameters and execute a series of statements.

4. **Arrow Functions:** Arrow functions are a shorthand notation for creating lambdas in Ruby. Instead of using the lambda keyword, an arrow (->) followed by parameters and a block of code is used to define a lambda.

5. **Collect Method:** The collect method is used to create a new array based on the elements of an existing array. It iterates over the elements, applies a transformation defined in a block, and returns a new array with the transformed elements.

6. **Ampersand Notation:** The ampersand (&) notation is used to convert a block into a proc object. It allows passing blocks as arguments to methods that expect a proc or lambda parameter.

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

# Object-Oriented Programming

As Ruby is a Object-oriented programming language, here we will see some of the features of that in Ruby

## Code [7_OOPS/Class.rb](7_OOPS/Class.rb)

```ruby
# naming convention: Should start with a capital letter

class Book
  attr_accessor :title, :author, :pages
end
=begin
# creating objects with a default constructor
a constructor is a method for creating instances
=end

book1 = Book.new()

book1.title = "Harry Potter"
book1.author = "J.K. Rowling"
book1.pages = 400

book2 = Book.new()

book2.title = "Sherlock holmes"
book2.author = "Arthur Conan Doyle"
book2.pages = 400

# its not a good option to create instances with a default constructor

class ModernBook
  attr_accessor :title, :author, :pages

# parameterized constructor
  def initialize(title, author, pages)
    @title = title,
    @author = author,
    @pages = pages
  end

end

book3 = ModernBook.new("The Great Gatsby", "F. Scott Fitzgerald", 218)

# to see object values
puts book1.inspect
puts book2.inspect
puts book3.inspect

=begin
Check out the below code in the editor. See how some variables start with $, @, or @@? This helps mark them as global, instance, and class variables (respectively). We’ll explain these in the next section. Run the code to see how these different variables work!
=end

class Computer
$manufacturer = "Mango Computer, Inc."
@@files = {hello: "Hello, world!"}

  def initialize(username, password)
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.


## Inheritance

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error


## Method overriding after Inheritance
class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end


class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end

## use of "super" keyword

class LandDragon < Creature
  def fight
    puts  "Instead of breathing fire!"
    super
  end
end

```

## Code Explanation

1. **Classes and Naming Convention**: In Ruby, classes are defined using the `class` keyword. It is a best practice to name classes starting with a capital letter.

2. **Creating Objects with a Default Constructor**: In Ruby, objects can be created using the `new` method of a class. This creates an instance of the class with default values for its attributes.

3. **Constructor and Parameterized Constructor**: Ruby classes can have an `initialize` method, which acts as a constructor. It is called when an object is created using the `new` method. A parameterized constructor accepts arguments to initialize the object's attributes with specific values.

4. **Object Value Inspection**: The `inspect` method in Ruby provides a string representation of an object's internal state, including its attributes and their current values. It is commonly used to inspect and display object values.

5. **Global Variables, Instance Variables, and Class Variables**: Ruby supports global variables (prefixed with `$`), instance variables (prefixed with `@`), and class variables (prefixed with `@@`). Global variables can be accessed from anywhere in the program, while instance variables are specific to an instance of a class, and class variables are shared among all instances of a class.

6. **Inheritance**: Inheritance allows a class to inherit attributes and methods from another class. In Ruby, inheritance is denoted by using the `<` symbol to indicate the subclass inheriting from the superclass.

7. **Method Overriding and `super` Keyword**: Method overriding occurs when a subclass provides its own implementation of a method that is already defined in the superclass. The `super` keyword is used to invoke the overridden method from the superclass.

## Code [7_OOPS/Virtual_machine.rb](7_OOPS/Virtual_machine.rb)

```ruby
class Machine
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end

  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"
```

## Code Explanation:

1. **Class Definition**: The code defines a class named `Machine` using the `class` keyword.

2. **Class Variables**: The class has a class variable `@@users` defined as an empty hash (`{}`). Class variables are shared among all instances of the class.

3. **Constructor (initialize)**: The class has an `initialize` method that is called when an instance of the `Machine` class is created. It takes two parameters, `username` and `password`. Inside the constructor, the `username` and `password` are assigned to instance variables `@username` and `@password` respectively. Additionally, the `username` and `password` are stored in the `@@users` hash, with `username` as the key and `password` as the value. An empty hash `@files` is also initialized as an instance variable.

4. **Instance Method (create)**: The class has an instance method named `create`. This method takes a `filename` parameter. Inside the method, the current time is obtained using `Time.now` and stored in a local variable `time`. The `filename` and corresponding `time` are then added to the `@files` hash, with `filename` as the key and `time` as the value. Finally, a message is printed to the console indicating the filename, the username of the machine, and the time of creation.

5. **Class Method (get_users)**: The class has a class method named `get_users`. This method returns the `@@users` hash, allowing access to the usernames and passwords of all users.

6. **Creating Instances**: Two instances of the `Machine` class are created. One with `username` as "eric" and `password` as 01234, and the other with `username` as "you" and `password` as 56789.

7. **Method Invocation**: The `create` method is called on each instance (`my_machine` and `your_machine`) with different filenames as arguments.

8. **Output**: The usernames and passwords stored in the `@@users` hash are displayed on the console using string interpolation and the `puts` method.

In summary, the code demonstrates the creation of instances of the `Machine` class, storing usernames and passwords in a class variable, and creating files associated with each instance. It also shows how to access the class variable using a class method.

## Conclusion

This Repo should contain the very fundamental knowledge of Ruby Programs...
[CheatSheet](https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-introduction-to-ruby-u/cheatsheet)
Now The next focus should be Ruby on Rails to run Ruby in Web Development

Happy coding!
