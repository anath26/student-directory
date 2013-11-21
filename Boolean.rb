def can_attend?(person)
	person[:age] >= 18 && person[:has_ticket]
end

puts can_attend?({:age => 19, :has_ticket => false})

def provide_mortgage?(salary, deposit, property_value)
	loan_amount = property_value - deposit
	min_deposit = 0.2 
	max_multiplier = 5
	deposit >= property_value * min_deposit && salary * max_multiplier >= loan_amount
end

puts provide_mortgage?(30000, 50000, 200000)

def on_sale?(product_stock, product_season)
	product_stock < 10 && product_season != :current
end


puts on_sale?(8, :current)


