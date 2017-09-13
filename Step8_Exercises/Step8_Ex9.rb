def input_students

    students = []

    months = ["January", "February", "March", "April", "May", "June", "July",
              "August", "September", "October", "November", "December"]

    loop do

      name = ""
      cohort = ""

      puts "Please enter the name of the student"
      puts "To finish, type end."
      name = gets.chomp
      break if name.downcase == "end"

      loop do
        puts "What cohort are you in? If you do not know type 'Unknown'"
        cohort = gets.chomp.capitalize
        puts "Please enter a valid cohort:" if !months.include? cohort
        break if months.include? cohort
      end

      students << {name: name.to_sym, cohort: cohort.to_sym}
      if students.count == 1
      puts "Now we have #{students.count} student"
      else
      puts "Now we have #{students.count} students"
      end
    end
    students
    end

def print_header
  puts "The students of Villains Academy"
  puts "-------------------"
end

def empty(students)
  students.each do |key|
    if key[:name] == :""
      key[:name] = :"Not Given"
    end
  end
end

def print(students)
  unique_months = students.map.uniq {|key| key[:cohort]}
  number = unique_months.length - 1
  count = 0
  while count < number
    students.each do |student|
     student[:cohort] == unique_months[count]
    puts "#{student[:name.to_sym]} (#{student[:cohort.to_sym]} cohort)"
    count += 1
  end
  end
end

def print_footer(students)
  if students.count == 1
  puts "Overall, we have #{students.count} great student"
  else
  puts "Overall, we have #{students.count} great students"
  end
end

students = input_students
empty(students)
p students.inspect
print_header
print(students)
print_footer(students)
