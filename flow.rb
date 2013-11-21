hungry = true

if hungry
	puts "I'm hungry and would like some food."
else
	puts "Thanks, but i'm not hungry."
end	

hungry = true

if hungry == true
	puts "I'm hungry and would like some food."
else
	puts "Thanks, but i'm not hungry."
end	


hungry = :maybe 

if hungry == true
	puts "I'm hungry and would like some food."
elsif hungry== false
	puts "Thanks, but i'm not hungry."
else
	puts "Either you're hungry or not - pick one."
end	



hungry = true
if hungry
	puts "let's go to a restaurant"
 end

 correct_answer = 4
 user_answer = 4
 if correct_answer == user_answer
 	puts "well done!"
 end

 if :france
 	puts "will this be printed?"
 end

 if 7
 	puts "and this?"
 end

 if nil
 	puts"and this too?"
 end

 if false
 	puts "what abour a hash?"
end

if 0
	puts "and even zero!"
end


hungry = false

unless hungry
	puts "Don't eat food"
end

hungry = false

if !hungry
	puts "Don't eat food" 
end

!true 


fruit = "kiwi"

case fruit
when "apple"
	puts "The apple is red"
when "banana"
	puts "Thebanana is yellow"
when "orange"
	puts "The orange is orange"
when "kiwi"
	puts "The kiwi is green"
else
	puts "We don't recognize that fruit"
end
	

















