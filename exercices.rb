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

 CENTER_ALIGNMENT = 150

def puts_centered (string)
	puts string.center (CENTER_ALIGNMENT)
end	

def print_footer (names)
 puts "Overall. we have #{names.length} great students\n"
end

def capitalize_all_words(string)
	string.split('').map {|word| word.capitalize }.join('')
end

def capitalized_input
	capitalize_all_words(gets.chomp)
end


def input_students
 	puts "Please enter the names of the students and there cohort\n"
	puts "To finish, just hit return twice\n"

	 students = []

	loop do
	name, cohort = capitalized_input, capitalized_input
	  	break if name.empty?
	puts "Please enter your cohort:\n"
	 	students << {:name => name, :cohort => cohort}
	 	puts "Now we have #{students.length} students"
	end
	 	students 
end
	 
 	


def print_header
 puts "The students of my cohort at Makers Academy\n"
 puts "---------------------\n"
end

def print_students(title, students)
puts_centered title
puts
puts_centered "========================"
students.each_with_index do |student, i|
	puts_centered "#{i+1}: #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_selected_students(title)
	print_students(title, student.select {|student| yield(student)})
end

def display(students)
	print_selected_students(students, "Names beginning with "A") {|student| student[:name] [0] == 'A'}
	print_selected_students(students, "Names not beginning with "A") {|student| student[:name] [0] != 'A'}
end


def print_students(students)
students.each do |student|
	if student[:name][0] == "a" && student[:name].length < 12
		puts "#{student[:name]} (#{student[:cohort]} cohort)\n"
	end
 end
end



students = input_students
print_header
display(students)
print_footer(students) 





































