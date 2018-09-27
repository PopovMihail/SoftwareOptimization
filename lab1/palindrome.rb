p "Please enter a string"
str = gets.chomp
str.delete! " "
rstr = str.reverse
if (str == rstr)
	p "String is a palindrome"
else
	p "String is not a palindrome"
end
