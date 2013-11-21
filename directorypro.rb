# students = [
# {:name => "Anath" , :cohort =>"november"},
# {:name => "Kennedy" , :cohort =>"november"},
# {:name => "Erica" , :cohort =>"november"},
# {:name => "Chris" , :cohort =>"november"},
# {:name => "Jean Baptiste" , :cohort =>"november"},
# {:name => "Tom" , :cohort =>"november"},
# {:name => "Tom" , :cohort =>"november"},
# {:name => "Simon" , :cohort =>"november"},
# {:name => "Anna" , :cohort =>"november"},
# {:name => "Laura" , :cohort =>"november"},
# {:name => "Jianne" , :cohort =>"november"},
# {:name => "Asta" , :cohort =>"november"},
# {:name => "Giorgi" , :cohort =>"november"},
# {:name => "james" , :cohort =>"november"},
# {:name => "James" , :cohort =>"november"},
# {:name => "Niki" , :cohort =>"november"},
# {:name => "Nisar" , :cohort =>"november"},
# {:name => "Giacomo" , :cohort =>"november"},
# {:name => "Michael" , :cohort =>"november"},
# {:name => "Peter" , :cohort =>"november"},
# {:name => "Bruce" , :cohort =>"november"}
# ]
 CENTER_ALIGNMENT = 150

def puts_centered (string)
	puts string.center (CENTER_ALIGNMENT)
end	

def input_students(students=[])
	 puts_centered("Please enter the name of the students")
	 puts_centered("To finish, just hit return twice")

	 puts_centered ("Give me a student name:")
	 name = gets.chomp

	 puts_centered ("Give me the chohort:")
	 cohort = gets.chomp

	 puts_centered("what's you hobbie?")
	 hobbie = gets.chomp

	 puts_centered("what's your country?")
	 country = gets.chomp

	if !name.empty?
	 	@students << {:name => name, :cohort => cohort, :hobbie => hobbie, :country => country}
	 	puts_centered("Now we have #{students.length} students")
	end

	students
end

def print_header
  puts_centered("===========================================")	
  puts_centered("The students of my cohort at Makers Academy")
  puts_centered("-------------------------------------------")
end

def print(students)
	index = 0
	while index<@students.length
		student = @students[index]
		index = index + 1
	 	puts_centered("#{index}. #{student[:name]}, (#{student[:cohort]} cohort, #{student[:hobbie]}, #{student[:country]})")
	end
	
end

def select_students_A(students)
	print(@students.select {|student| student[:name].chars.first == "A"})
end

def select_character(students)
	print (@students.select {|student| student[:name].length <= 12})
end


def print_footer (names)
  puts "Overall. we have #{names.length} great students"
end

 def print_menu
	puts "1. Inuput the students"
	puts "2. Show the students"
	puts "9. Exit"
end

@students = []

def show_students
	print_header
	print(@students)
	print_footer(@students)
end


def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "9"
		exit
	else
		puts "I dont know what you mean, try again" 
		selection = gets.chomp
		process(selection)
	end
end

def interactive_menu
	loop do 
		print_menu
		selection = gets.chomp
		process(selection)


	end
end

interactive_menu

students = []




# def save_students
# 	file = File.open ("students.csv", "w")
# 	@students.each do |student|
# 		student_data = [student[:name], student[:cohort]]
# 		csv_line = student_data.join(",")
# 		file.puts csv_line
# 	end
# 	file.close
# end


	 
	