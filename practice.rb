print "Please type your name: "
user_name = gets.chomp
puts "Hello, #{user_name}!"

print "Please your date of birth (month/day/year format): "
users_dob = gets.chomp.split("/")

birth_year = users_dob[2].to_i
birth_month = users_dob[0].to_i
birth_day = users_dob[1].to_i

current_time = Time.now
current_year = current_time.year
current_month = current_time.month
current_day = current_time.day

age = current_year - birth_year
if current_month < birth_month || (current_month == birth_month && current_day < birth_day)
  age -= 1
end

next_birthday_year = current_year
next_birthday_year += 1 if current_month > birth_month || (current_month == birth_month && current_day > birth_day)

next_birthday = Time.new(next_birthday_year, birth_month, birth_day)
days_until_birthday = (next_birthday - current_time).to_i / (24 * 60 * 60)

puts "You are #{age} years old. And you are going to be #{age + 1} years old in #{days_until_birthday} days."