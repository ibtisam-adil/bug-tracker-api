puts "\n== Seeding the database =="

begin

User.create(
  name: "Alex Johnson",
  email: "manager@gmail.com",
  password: '123456',
  user_type: 'manager'
)

User.create(
  name: "Emily Chen",
  email: "developer@gmail.com",
  password: '123456',
  user_type: 'developer'
)

User.create(
  name: "Michael Lee",
  email: "qa@gmail.com",
  password: '123456',
  user_type: 'qa'
)

rescue ActiveRecord::RecordInvalid => e
  puts "Error seeding data: #{e.message}"
end

puts "Seeding completed."