p 'Enter value:'
value = gets
if value.to_f == 0
	p 'error value'
	exit
end

p 'Enter first system C or K or F:'
system = gets.chomp

unless system == 'C' || system == 'F' || system == 'K'
	p 'error system'
	exit
end

p 'Enter second sistem:'
convert = gets.chomp
unless system == 'C' || system == 'F' || system == 'K'
	p 'error system'
	exit
end

p value if system == convert 



if system == 'C' and convert == 'K'
  p value.to_f + 273
elsif system == 'C' and convert == 'F'
  p value.to_f * 1.8 - 459
elsif system == 'K' and convert == 'C'
  p value.to_f - 273
elsif system == 'K' and convert == 'F'
  p value.to_f * 1.8 - 459
elsif system == 'F' and convert == 'C'
  p (value.to_f - 1.8) / 1.8
elsif system == 'F' and convert == 'K'
  p (value.to_f + 459) / 1.8
end
