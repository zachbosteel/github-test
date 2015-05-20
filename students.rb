puts "This program divides any classroom of students up into groups of two  randomly. Please enter the names of your students below, one student to a line. Once you have entered all your students' names, type 'done' to indicate you are finished."

students = []

while true
    answer = gets.chomp
    unless answer == "done"
       students << answer
    else
      break
    end
end

students = students.shuffle

puts "Here are your group assignments."

if students.length.even?
   index = 0
   groups = students.length.to_i/2
   groups.times do 
      puts students[index] + ", " + students[index +1]
      index += 2
   end
else
  index = 0
  oddstudent = students.pop
  groups = (students.length.to_i/2) - 1
  1.times do 
      puts students[index] + ", " + students[index +1] + ", " + oddstudent
      index += 2
   end
   groups.times do 
      puts students[index] + ", " + students[index +1]
      index += 2
   end
end