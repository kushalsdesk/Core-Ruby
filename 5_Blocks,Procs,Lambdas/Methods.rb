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
