def input_students
  puts "We're going to take the details of the students. Please enter the name of the student"

  # create an empty array
  students = []
  # get the first student name
  name = gets.chomp
  puts "How old is #{name}?"
  age = gets.chomp
  # while the name is not empty, repeat this code
while !name.empty? do

    students << {name: name, cohort: :november, age: age}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter the name of the next student."
    puts "To finish, just hit return twice"
    name = gets.chomp
    if !name.empty?
    puts "How old is #{name}?"
    end
    age = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------------"
end

def print(students)
    index = 0
    while index <= students.length - 1
    puts "#{students[index].values[0]}, #{students[index].values[2]}, (#{students[index].values[1]} cohort)"
    index += 1
    end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
