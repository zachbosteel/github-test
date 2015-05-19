people =[]

5.times do
  person = {}
  puts "Please tell me the first name of this person."
  firstname = gets.chomp
  person["FIRST NAME"] = firstname
  puts "Please tell me the last name of this person."
  lastname = gets.chomp
  person["LAST NAME"] = lastname
  puts "Please provide me with their email address."
  email = gets.chomp
  person["EMAIL"] = email 
  accntnum =[]
  10.times do
   number = rand(0..9)
   accntnum << number
  end
  accntnum = accntnum.join
  person["ACCT #"] = accntnum
  people << person
end

people.each do |person|
  person.each do |key, value|
    puts key + ": " + value
  end
end