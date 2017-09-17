file_as_string = ""
file = File.open("#{$0}","r") do |f|
f.each_line do |line|
  file_as_string += line
end
end
print file_as_string
