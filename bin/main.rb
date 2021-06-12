# 1---
# Write a method average_of_three(num1, num2, num3) that returns the average of three numbers
def average_of_three(num1, num2, num3)
  sum = num1 + num2 + num3
  sum / 3.0
end

puts average_of_three(3, 7, 8) # => 6.0
puts average_of_three(2, 5, 17) # => 8.0
puts average_of_three(2, 8, 1) # => 3.666666
# 2---
# Write a method goodbye(name) that takes in a string name and returns a string saying bye to that name. See the example calls.
def goodbye(name)
  puts 'Bye ' + name + '.'
end

puts goodbye('Daniel') # => "Bye Daniel."
puts goodbye('Mark') # => "Bye Mark."
puts goodbye('Beyonce') # => "Bye Beyonce."

# 3---
# Write a method is_div_by_5(number) that takes in a number and returns the boolean true if the given number is divisible by 5, false otherwise
def is_div_by_5(number)
  number % 5 == 0
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8) # => false

# 4---
# Write a method either_only(number) that takes in a number and returns true if the number is divisible by either 3 or 5, but not both. The method should return false otherwise.
def either_only(number)
  if ((number % 5 == 0) || (number % 3 == 0)) && !(number % 15 == 0)
    true
  else
    false
  end
end

puts either_only(9) # => true
puts either_only(20) # => true
puts either_only(7) # => false
puts either_only(15) # => false
puts either_only(30) # => false
# 5---
# Write a method larger_number(num1, num2) that takes in two numbers and returns the larger of the two numbers.
def larger_number(num1, num2)
  if num1 > num2
    num1
  else
    num2
  end
end

puts larger_number(42, 28) # => 42
puts larger_number(99, 100) # => 100
# 6---
# Write a method longer_string(str1, str2) that takes in two strings and returns the longer of the two strings. In the case of a tie, the method should return the first string.
def longer_string(str1, str2)
  if str1.length >= str2.length
    str1
  else
    str2
  end
end

puts longer_string('app', 'academy') # => "academy"
puts longer_string('summer', 'fall') # => "summer"
puts longer_string('hello', 'world') # => "hello"
# 7---
# Write a method number_check(num) that takes in a number and returns a string. The method should return the string 'positive' if the num is positive, 'negative' if the num is negative, and 'zero' if the num is zero.
def number_check(num)
  if num > 0
    'positive'
  elsif num < 0
    'negative'
  else
    'zero'
  end
end

puts number_check(5) # => "positive"
puts number_check(-2) # => "negative"
puts number_check(0) # => "zero"
# 8---
# Write a method word_check(word) that takes in a word and returns a string. The method should return the string "long" if the word is longer than 6 characters, "short" if it is less than 6 characters, and "medium" if it is exactly 6 characters long.
def word_check(word)
  if word.length > 6
    'long'
  elsif word.length < 6
    'short'
  else
    'medium'
  end
end

puts word_check('contraption') # => "long"
puts word_check('fruit') # => "short"
puts word_check('puzzle') # => "medium"
# 9---
# Write a method count_e(word) that takes in a string word and returns the number of e's in the word
def count_e(word)
  i = 0
  n = 0
  while i < word.length
    n += 1 if word[i] == 'e'
    i += 1
  end
  n
end

puts count_e('movie') # => 1
puts count_e('excellent') # => 3
# 10---
# Write a method count_a(word) that takes in a string word and returns the number of a's in the word. The method should count both lowercase (a) and uppercase (A)
def count_a(word)
  i = 0
  n = 0
  while i < word.length
    n += 1 if word[i] == 'a' || word[i] == 'A'
    i += 1
  end
  n
end

puts count_a('application') # => 2
puts count_a('bike') # => 0
puts count_a('Arthur') # => 1
puts count_a('Aardvark') # => 3
# 11---
# Write a method, count_vowels(word), that takes in a string word and returns the number of vowels in the word. Vowels are the letters a, e, i, o, u.
def count_vowels(word)
  i = 0
  n = 0
  vovels = 'aeiou'
  while i < word.length
    n += 1 if vovels.include?(word[i])
    i += 1
  end
  n
end

puts count_vowels('bootcamp') # => 3
puts count_vowels('apple') # => 2
puts count_vowels('pizza') # => 2

# 12---
# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.
def sum_nums(max)
  n = 1
  sum = 0
  while n <= max
    sum += n
    n += 1
  end
  sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15
# 13---
# Write a method factorial(num) that takes in a number num and returns the product of all numbers from 1 up to and including num.
def factorial(num)
  i = 1
  n = 1
  while i <= num
    n *= i
    i += 1
  end
  n
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120
# 14---
# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.
def reverse(word)
  i = word.length
  while i >= 0
    print word[i]
    i -= 1
  end
end

puts reverse('cat') # => "tac"
puts reverse('programming') # => "gnimmargorp"
puts reverse('bootcamp') # => "pmactoob"
# 15---
# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. A palindrome is a word that is spelled the same forwards and backwards.
def is_palindrome(word)
  i = word.length
  reverse = ''
  while i >= 0
    reverse += word[i].to_s
    i -= 1
  end
  reverse == word
end

puts is_palindrome('racecar') # => true
puts is_palindrome('kayak') # => true
puts is_palindrome('bootcamp') # => false
# 16---
# Write a method to_initials that takes in a person's name string and returns a string representing their initials.
def to_initials(name)
  new_name = name.split(' ')
  str = ''
  new_name.each do |name|
    str += name[0]
  end
  str
end

puts to_initials('Kelvin Bridges') # => "KB"
puts to_initials('Michaela Yamamoto') # => "MY"
puts to_initials('Mary La Grange') # => "MLG"
# 17---
# Write a method first_in_array that takes in an array and two elements, the method should return the element that appears earlier in the array.
def first_in_array(arr, el1, el2)
  if arr.index(el1) > arr.index(el2)
    el2
  else
    el1
  end
end

puts first_in_array(%w[a b c d], 'd', 'b'); # => "b"
puts first_in_array(%w[cat bird dog mouse], 'dog', 'mouse'); # => "dog"
# 18---
# Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.
def abbreviate_sentence(sent)
  new_arr = sent.split(' ')
  arr = []
  new_arr.each do |word|
    if word.length > 4
      new_word = abbr_word(word)
      arr << new_word
    else
      arr << word
    end
  end
  arr.join(' ')
end

def abbr_word(word)
  vovels = 'eaiou'
  new_word = ''
  word.each_char do |ele|
    new_word += ele unless vovels.include?(ele)
  end
  new_word
end

puts abbreviate_sentence('follow the yellow brick road') # => "fllw the yllw brck road"
puts abbreviate_sentence('what a wonderful life') # => "what a wndrfl life"
# 19---
# Write a method format_name that takes in a name string and returns the name properly capitalized.
# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  arr = str.split(' ')
  new_arr = []
  arr.each do |name|
    name = name[0].upcase + name[1..-1].downcase
    new_arr << name
  end
  new_arr.join(' ')
end

puts format_name('chase WILSON') # => "Chase Wilson"
puts format_name('brian CrAwFoRd scoTT') # => "Brian Crawford Scott"
# 20---
# Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.
# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  arr = str.split(' ')
  if arr.length < 2
    false
  elsif arr.length >= 2
    arr.each do |name|
      if name == name[0].upcase + name[1..-1].downcase
        return true
      else
        return false
      end
    end
  end
end

puts is_valid_name('Kush Patel') # => true
puts is_valid_name('Daniel') # => false
puts is_valid_name('Robert Downey Jr') # => true
puts is_valid_name('ROBERT DOWNEY JR') # => false
# 21---
# Write a method is_valid_email that takes in a string and returns a boolean indicating whether or not it is a valid email address.
# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  letters = 'qwertyuiopasdfghjklzxcvbnm'
  arr = str.split('@')
  return false if arr.length != 2

  arr[0].each_char do |ele|
    return false unless letters.include?(ele)
  end
  arr[1].split('.').length == 2
end

puts is_valid_email('abc@xy.z') # => true
puts is_valid_email('jdoe@gmail.com') # => true
puts is_valid_email('jdoe@g@mail.com') # => false
puts is_valid_email('jdoe42@gmail.com') # => false
puts is_valid_email('jdoegmail.com') # => false
puts is_valid_email('az@email') # => false
# 22---
# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the characters in each word reversed. Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.
def reverse_words(sent)
  arr = sent.split(' ')
  new_arr = []
  arr.each do |ele|
    ele = ele.reverse
    new_arr << ele
  end
  new_arr.join(' ')
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
# 23---
# Write a method rotate_array that takes in an array and a number. The method should return the array after rotating the elements the specified number of times. A single rotation takes the last element of the array and moves it to the front.
def rotate_array(arr, num)
  num.times do
    ele = arr.pop
    arr.unshift(ele)
  end
  arr
end

print rotate_array(%w[Matt Danny Mashu Matthias], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array(%w[a b c d], 2) # => [ "c", "d", "a", "b" ]
puts
