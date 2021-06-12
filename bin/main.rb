# 1---
# Write a method average_of_three(num1, num2, num3) that returns the average of three numbers
def average_of_three(num1, num2, num3)
	sum = num1 + num2 + num3
  	avg = sum/3.0
  	return avg
end

puts average_of_three(3, 7, 8)   # => 6.0
puts average_of_three(2, 5, 17)  # => 8.0
puts average_of_three(2, 8, 1)   # => 3.666666
# 2---
# Write a method goodbye(name) that takes in a string name and returns a string saying bye to that name. See the example calls.
def goodbye(name)
	puts "Bye " + name + '.'
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."