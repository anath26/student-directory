students = [
"Anath"
"Kennedy"
"Erica"
"Chris"
"Jean Baptiste"
"Tom"
"Tom"
"Simon"
"Anna"
"Laura"
"Jianne"
"Asta"
"Giorgi"
"james"
"James"
"Niki"
"Nisar"
"Giacomo"
"Michael"
"Peter"
"Bruce"
]

def print_header
 puts "The students of my cohort at Makers Academy"
 puts "---------------------"
end

def print(names)
names.each do |name|
	puts name
 end
end

def print_footer (names)
 puts "Overall. we have #{names.lenght} great students"
end

print_header
print(students)
print_footer(students)

