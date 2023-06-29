Write out pseudo-code (both casual and formal) that does the following:

a method that returns the sum of two integers
def sum(a, b)
  a+b
end

a method that takes an array of strings, and returns a string that is all those strings concatenated together
def concat(array)
  Convert array to strings
  Concat strings into one
  Return result
end
a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance:
every_other([1,4,7,2,5]) # => [1,7,5]
def (array)
  set index = 0
  if index.odd, delete item from array.
    Use each/map method or start from back to make sure number's index doesn't change during method.
    return new array 
end
a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.
def method(char, string)
  loop through string to find x.
  # make empty array
  # If x is found, add to new array.
  # if array.length >= 3, this is not going to provide index, restarting
  set index = 0
  until string[index] == char
    index += 1
    if string[index] == char
      index += 1
        if string[index] == char
          index += 1
          return index
        else
          index += 1
          return nil

  
end
a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:

merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
You may assume that both array arguments have the same number of elements.

set new_array = []
index = 0
while index < array_1.length
  new_array.push(array_1[index])
  new_array.push(array_2[index])
  index += 1
end
