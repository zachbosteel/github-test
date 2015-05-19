Sam = ["crepes", "pancakes", "scrambled eggs", "toast", "coffee", "muffins", "biscuits", "hashbrowns", "bacon", "fruit cup"]

Sally = ["French", "Spanish", "English", "Greek", "Russian", "Urdu"]

if Sam.length >= 10 and Sally.length >= 5
  if Sam.include? "crepes" and Sally.include? "French"
    puts "They should get married!"
  else 
    puts "They should date!"
  end
else
  puts "They should not date!"
end