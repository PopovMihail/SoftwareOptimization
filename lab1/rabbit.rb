def fib(n)
    if (n == 1 || n == 2)
        return 1
    end
	return fib(n - 1) + fib(n - 2)
end

p "Please enter a number of months"
n = gets.to_i
p fib(n) 
p "Number of pairs of rabbits after" 
p n 
p "months"
