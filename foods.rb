foods = []

5.times do 
puts "What's your favorite food?"
food = gets.chomp
foods << food
end

foods.each_with_index do |food, index|
  puts (index + 1).to_s + ". #{food}"
end