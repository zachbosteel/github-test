people =[]

puts "We will now record the information of five new members of our bank."

2.times do
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
  person["ACCT #"] = accntnum.to_s
  people << person
end

people.each do |person|
  person.each do |key, value|
    puts key + ": " + value
  end
  puts 
  puts 
end

puts "You can now look up an individual's information by account number. Please enter an account number below to retrieve an individual's full profile." 

class AccountCheck
  def initialize (people)
    @accntnum = gets.chomp
    @index = 0
    @people = people
  end
  def lookup
    @people.each do |person|
      if person["ACCT #"] == @accntnum
        if person["EMAIL"].include?("@") and person["EMAIL"][-4,4] == ".com"
          person.each do |key, value|
            puts key + ": " + value
          end
        elsif !person["EMAIL"].include?("@") or !person["EMAIL"][-4,4] == ".com"
          puts "Sorry, I can't return this information without a valid email address. Please reenter the individual's email address,  and be sure to include \"@\" and \".com\" in the address." 
          person["EMAIL"] = gets.chomp
          puts "Thank you. Please try entering the account number again."
          @accntnum = gets.chomp.to_i
          self.lookup 
        end
      else
        @index += 1
        next
      end  
      if @index >= @people.length
        puts "I'm sorry. You entered an invalid account number. Please try again."
        @accntnum = gets.chomp.to_i
        self.lookup
      end
    end
  end
end

query = AccountCheck.new (people)
query.lookup