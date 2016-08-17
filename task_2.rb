
# Let's write a method to find the number of possible parentheses combinations using info from https://oeis.org/A000108 and https://ru.wikipedia.org/wiki/Числа_Каталана

def katalan(num)
	return 1 if num <= 0
	result = 0
	# To find the number of pissible combinations we should go down through all numbers and multiply each one of them using recursion.
	(0...n).each do |x|
		result += katalan(x) * katalan(n - 1 - x)
	end
	result
end

# Now we just need to get user input and we're done. Yeah!
puts "Enter the number of parentheses"
n = gets.to_i
puts katalan num