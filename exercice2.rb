# students = [
# {:name => "Anath" , :cohort =>"november"},
# {:name => "Kennedy" , :cohort =>"november"},
# {:name => "Erica" , :cohort =>"november"},
# {:name => "Chris" , :cohort =>"november"},
# {:name => "Jean Baptiste" , :cohort =>"november"},
# {:name => "Tom" , :cohort =>"november"},
# {:name => "Tom" , :cohort =>"november"},
# {:name => "Simon" , :cohort =>"november"},
# {:name => "Anna" , :cohort =>"january"},
# {:name => "Laura" , :cohort =>"november"},
# {:name => "Jianne" , :cohort =>"november"},
# {:name => "Asta" , :cohort =>"january"},
# {:name => "Giorgi" , :cohort =>"november"},
# {:name => "james" , :cohort =>"november"},
# {:name => "James" , :cohort =>"november"},
# {:name => "Niki" , :cohort =>"january"},
# {:name => "Nisar" , :cohort =>"november"},
# {:name => "Giacomo" , :cohort =>"november"},
# {:name => "Michael" , :cohort =>"november"},
# {:name => "Peter" , :cohort =>"november"},
# {:name => "Bruce" , :cohort =>"january"}
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
	 	students << {:name => name, :cohort => cohort, :hobbie => hobbie, :country => country}
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
	while index<students.length
		student = students[index]
		index = index + 1
	 	puts_centered("#{index}. #{student[:name]}, (#{student[:cohort]} cohort, #{student[:hobbie]}, #{student[:country]})")
	end
	
end

def select_students_A(students)
	print(students.select {|student| student[:name].chars.first == "A"})
end

def select_character(students)
	print (students.select {|student| student[:name].length <= 12})
end

def student_by_cohort(students)
	print (students.sort_by {|student| student[:cohort]})
end
	



def print_footer (names)
  puts "Overall. we have #{names.length} great students"
end
students = []
continue = "yes"
while continue == "yes" do 
input_students(students)
puts students
print_header
#print(students)
select_character(students)
select_students_A(students)
print_footer(students)
puts "Shall we go on?"
student_by_cohort(students)
continue = gets.chomp
end
print_footer(students)





























