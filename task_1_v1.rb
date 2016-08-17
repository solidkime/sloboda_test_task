#Let's get a and b as user input
puts "Введите 'a'"
a = gets.chomp.to_s 
puts "Вы ввели #{a}"
puts "a length is #{a.length}"

puts "Введите 'b'"
b = gets.chomp.to_s
puts "Вы ввели #{b}"

#Convert a and b to array
a = a.split("")
b = b.split("")

def nums_comparer(a, b)
  #b can't include a, if it's shorter than a. It makes no sence! We return 'false'!
  if a.length > b.length
    return false
  else
    index = 0
    #we use counter 'index' to iterate 'a' array
    #we use counter x to iterate through 0 to 'b' array length, so every step we can check wheter  'a' array includes  'x' element or no
    for x in 0..b.length
      #Here we are chosing 'index' element of array 'a', comparing it to x element of b (which changes every iteration) and if elements are equal adding +1 to index, switching to the next "a" element for the next iteration
      if b[x] == a[index]
        index +=1
      end
      #Here we are checking, whether 'a' array is over. Because arrays starts with 0 'a' can't be iterated when 'index' is equal to it's length (because the last element of array is length-1).
      #So if we only have acess to the next element iteration only when previous was found and we have no elements to iterate means we found all elements! In this case our method returns - 'true'.
      if index == a.length
        return true
      end
    end
    #If we iterated the whol 'b' array and got no result than we can we return false
    return false
  end
end


if nums_comparer(a,b)
  puts "ДА"
else
  puts "НЕТ"
end