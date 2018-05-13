# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_users
  5.times do |i|
    user = User.create(
      first_name: FFaker::Name.first_name,
      last_name: FFaker::Name.last_name,
      role: 'user',
      email: "user#{i}@gmail.com",
      password: 'password',
      password_confirmation: 'password',
    )
  end
end

def create_categories

end

create_users
