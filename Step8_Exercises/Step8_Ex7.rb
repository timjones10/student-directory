def input_students

  puts "Please enter the name of the first student. To finish type 'end'."
  # create an empty array
  students = []
  # get the first student name
  name = gets.chomp
  if name == ""
    puts "Please enter a name."
    name = gets.chomp
  end
    while name != "end"
    puts "Which cohort are you going to join?"
  puts "To finish, just type 'end'"
  months = ["january", "february", "march",
          "april", "may", "june",
          "july", "august", "september",
           "october", "november", "december", ""]
    cohort = gets.chomp
    if months.include?(cohort.downcase) == false
    puts "Please enter a correct cohort name"
    cohort = gets.chomp
    end
    # add the student hash to the array
    students << {name: name.to_sym, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students. Please enter the next name then cohort."
    # get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------------"
end

def empty(students)
  students.each do |key|
    if key[:name] == :""
      key[:name] = :"default"
    end
    if key[:cohort] == :""
      key[:cohort] = :"default"
    end
  end
end



def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end


students = input_students
empty(students)
p students.inspect
print_header
print(students)
print_footer(students)
