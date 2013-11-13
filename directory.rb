# students = [
# {:name => "Anath" , :cohort =>november}
# {:name => "Kennedy" , :cohort =>november}
# {:name => "Erica" , :cohort =>november}
# {:name => "Chris" , :cohort =>november}
# {:name => "Jean Baptiste" , :cohort =>november}
# {:name => "Tom" , :cohort =>november}
# {:name => "Tom" , :cohort =>november}
# {:name => "Simon" , :cohort =>november}
# {:name => "Anna" , :cohort =>november}
# {:name => "Laura" , :cohort =>november}
# {:name => "Jianne" , :cohort =>november}
# {:name => "Asta" , :cohort =>november}
# {:name => "Giorgi" , :cohort =>november}
# {:name => "james" , :cohort =>november}
# {:name => "James" , :cohort =>november}
# {:name => "Niki" , :cohort =>november}
# {:name => "Nisar" , :cohort =>november}
# {:name => "Giacomo" , :cohort =>november}
# {:name => "Michael" , :cohort =>november}
# {:name => "Peter" , :cohort =>november}
# {:name => "Bruce" , :cohort =>november}
# ]

def input_students
	 puts "Please enter the name of the students"
	 puts "To finish, just hit return twice"

	 students = []

	 name = gets.chomp

	while !name.empty? do 
	 	students << {:name => name, :cohort => :november}
	 	puts "Now we have #{students.length} students"

	 	name = gets.chomp
	end

	students

end

def print_header
 puts "The students of my cohort at Makers Academy"
 puts "---------------------"
end

def print(students)
students.each do |student|
	puts "#{student[:name]} (#{student[:cohort]} cohort)"
 end
end

def print_footer (names)
 puts "Overall. we have #{names.length} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

