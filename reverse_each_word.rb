# Write a method called reverse_each_word that takes in a string
# argument of a sentence and returns that same sentence
# with each word reversed in place.
# First solve it using .each
# Then write the same method using .collect to see the difference.
# Hint: You can't use an enumerator on a string, so how can we turn
# our string into an array?
# Hint: How can we reverse each word and return those altered words?
# Remember that .each returns the original array but other enumerators don't.


### method using .each:::
# def reverse_each_word(string)
#   # string.split(" ") #split string into array using each space btwn words
#   new_array = [] #create new empty array
#   string.split(" ").each do |words| #split string at spaces, then loop through the resulting array and on each element...
#     new_array << words.reverse #...reverse the word and assign it to new_array
#   end #end do loop
#   return new_array.join(" ") #return elements of new_array as string seperated by spaces
# end #end method

### method using .collect:::
def reverse_each_word(string)
  # string.split(" ") #split string into array using each space btwn words
  new_array = [] #create new empty array
  string.split(" ").collect do |words| #split string at spaces, then loop through the resulting array and on each element...
    new_array << words.reverse #...reverse the word and assign it to new_array
  end #end do loop
  puts string #outputting to see original string (don't need this to line to pass test)
  puts new_array.join(" ") #outputting to see new string (don't need this to line to pass test)
  return new_array.join(" ") #return elements of new_array as string seperated by spaces
end #end method
