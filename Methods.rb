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