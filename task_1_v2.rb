# Let's get some user input!
puts "Введите 'a'"
a = gets.to_i
puts "Введите 'b'"
b = gets.to_i

# Now we do an iteration loop unless one of the numbers becomes 0
while a!=0 && b!=0 do
	# We compare last digits of 'a' and 'b' and cut the last digit of 'a' if it's equal to the last digit of 'b', which means we've found one of the 'a' digits and going to check the next on the next iteration.
	a = a/10 if a%10==b%10
	# We always cut the last digit of 'b', because the meanings of this programm is to iterate 'b' one by one. 
	b = b/10
end

# We return the answer to the user. 
# If number 'b' was completely iterated (equal to 0) and number 'a' has not been cut off completely (not equal to 0), which means we haven't found all the 'a' digits in 'b', so we return NO.
# If number 'b' was completely iterated (equal to 0) and number 'a' is equal to 0 means we have found all the a digits. Congratulations! Let's return "YES"!
# If 'a' was completely iterated (equalts to 0) and b wasn't - it's ok, we still found the full 'a' number in 'b' so we return 'YES'.
# If both are not eqal to 0 - why are you reading this? Haha! Your iteration is still in process.
puts (b==0 && a!=0) ? "НЕТ" : "ДА"