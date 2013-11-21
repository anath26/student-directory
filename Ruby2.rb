
students = ["Jack", "John", "Mary"]

students.each do |student|
	puts student 
end

puts students.select { |name| name.chars.first == "M" }

3.times do |i|
	puts "allowa #{i}"
end

3.times { |i| puts "halil #{i}" }





