people =[]

5.times do
  person = {}
  puts "Please tell me the first name of this person."
  firstname = gets.chomp
  person[:first_name] = firstname
  puts "Please tell me the last name of this person."
  lastname = gets.chomp
  person[:last_name] = lastname
  puts "Please provide me with their email address."
  email = gets.chomp
  person[:email] = email 
  accntnum =[]
  10.times do
   number = rand(0..9)
   accntnum << number
  end
  accntnum = accntnum.join
  person[:account_number] = accntnum
  people << person
end

p people