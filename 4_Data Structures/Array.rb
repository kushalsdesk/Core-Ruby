#Try array , very important data structure
games = Array["Forza", "NFS", 100];  #can store any type data with all
puts ("#{games}")

puts ("#{games[0]}")  # accessing index
#to create a new empty array
nums = Array.new
# We can also try the .sort() method on the array , but for that we need to have the same types in that array

#Need to apply the methods now
nums.push(7,6,8,5,2,3,4)
puts ("nums is: #{nums}")
puts ("The Length of the Nums is: #{nums.length}")


nums2 = nums.sort() 
puts ("nums2 is :#{nums2}")


nums2.pop()  #pop will delete the last element
puts ("The modified nums2: #{nums2}")

array = [nums2.reverse()] #reverse the array and will do a nested array
puts("The Original array: #{array}") 

array.push(nums.reverse(),11,14);
puts("The nested array: #{array}") 

array.flatten!  #flatten the array, nested arrays will one-dimensional

puts("The flattened array: #{array}") 
puts ("#{array.include?(3)}")



