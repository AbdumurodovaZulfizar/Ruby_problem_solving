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

# 3---
# Write a method is_div_by_5(number) that takes in a number and returns the boolean true if the given number is divisible by 5, false otherwise
def is_div_by_5(number)
  if number%5==0
    return true
  else
    return false
  end

end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8)  # => false

# 4---
# Write a method either_only(number) that takes in a number and returns true if the number is divisible by either 3 or 5, but not both. The method should return false otherwise.
def either_only(number)
	if ((number % 5==0)||(number % 3==0))&&(!(number % 15==0))
      return true
    else
      return false
    end
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false
# 5---
# Write a method larger_number(num1, num2) that takes in two numbers and returns the larger of the two numbers.
def larger_number(num1, num2)
	if num1>num2
      return num1
    else
      num2
    end
end

puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100
# 6---
# Write a method longer_string(str1, str2) that takes in two strings and returns the longer of the two strings. In the case of a tie, the method should return the first string.
def longer_string(str1, str2)
	if str1.length>=str2.length
      return str1
    else
      str2
    end
end

puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"
# 7---
# Write a method number_check(num) that takes in a number and returns a string. The method should return the string 'positive' if the num is positive, 'negative' if the num is negative, and 'zero' if the num is zero.
def number_check(num)
	if num>0
      return "positive"
    elsif num<0
      return "negative"
    else
      return 'zero'
    end
end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"
# 8---
# Write a method word_check(word) that takes in a word and returns a string. The method should return the string "long" if the word is longer than 6 characters, "short" if it is less than 6 characters, and "medium" if it is exactly 6 characters long.
def word_check(word)
	if word.length>6
      return 'long'
    elsif word.length<6
      return 'short'
    else
      'medium'
    end
end

puts word_check("contraption") # => "long"
puts word_check("fruit")       # => "short"
puts word_check("puzzle")      # => "medium"
# 9---
# Write a method count_e(word) that takes in a string word and returns the number of e's in the word
def count_e(word)
  i=0
  n=0
    while i<word.length
      if word[i]=='e'
        n+=1
      end
      i+=1
    end
    return n
end
  
puts count_e("movie") # => 1
puts count_e("excellent") # => 3
# 10---
# Write a method count_a(word) that takes in a string word and returns the number of a's in the word. The method should count both lowercase (a) and uppercase (A)
def count_a(word)
  i=0
  n=0
    while i<word.length
      if word[i]=='a' || word[i]=='A'
        n+=1
      end
      i+=1
    end
  return n
end
    
puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3
# 11---
# Write a method, count_vowels(word), that takes in a string word and returns the number of vowels in the word. Vowels are the letters a, e, i, o, u.
def count_vowels(word)
  i=0
  n=0
    vovels = 'aeiou'
    while i<word.length
      if vovels.include?(word[i])
        n+=1
      end
      i+=1
    end
  return n
end
  
puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2

# 12---
# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.
def sum_nums(max)
	n=1
  sum=0
  while n <= max
    sum += n
    n+=1
  end
  return sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15