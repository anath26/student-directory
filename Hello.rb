def hello(name, age)
	puts "Welcome #{name}, #{age} is definitely not too old to learn to learning how to code"

end

hello("Rob",30)	
hello("Jane",72)
hello("Jenny",55)


def buy(product, quantity = 1)
	puts"Here is your #{quantity} #{product}, thank you"
end

buy("milk")
buy("milk",5)

def monthly_payment(salary_per_annum)
	return salary_per_annum / 12
end

puts "If the salary is £30,000 per year,"
puts"The monthly payment will be #{monthly_payment(3000)}"



def odd_or_even(number)
	if number.odd?
		"odd"
	else
		"even"
	end	
end

puts odd_or_even(2)
puts odd_or_even(5)

def say_hello
	return
	puts "Hello!" 
end


instalments = 12

def monthly_payment(salary_per_annum)
	return salary_per_annum / instalments
end

puts "If the salary is £30,000 per year,"
puts "The monthly payment will be #{monthly_payment(3000)}"
puts "paid in #{instalments} instalments"


mixed_array = ["some string", 5, 17.42]
fun_with_arrays = ["a string", ["an", "array"], 5]

hungry = true

if hungry
	puts "I'm hungry and would like some food."
else
	puts "Thanks, but i'm not hungry."
end














