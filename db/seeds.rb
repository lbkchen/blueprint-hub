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
  puts 'Created users'
end

def create_sprints
  10.times do |i|
    sprint = Sprint.create(
      start: DateTime.now.to_date + 7 * i,
      end: DateTime.now.to_date + 7 * (i + 1),
      name: FFaker::Book.title,
      description: FFaker::CheesyLingo.paragraph,
    )
    3.times do |i|
      sprint.objectives.create(
        description: FFaker::CheesyLingo.sentence,
        completed: false, 
      )
    end
  end
  puts 'Created sprints'
end

def create_categories
  Category.create([{
    name: 'Logistics',
    priority: 1,
  }, {
    name: 'Important',
    priority: 3,
  }, {
    name: 'Finances',
    priority: 1,
  }, {
    name: 'Developers',
    priority: 2,
  }])
  puts 'Created categories'
end

def create_resources
  Sprint.all.each do |sprint|
    n = Random.rand(3..5)
    n.times do |i|
      resource = sprint.resources.create(
        name: FFaker::CheesyLingo.title,
        url: FFaker::Youtube.url,
      )
      CategoryResource.create(
        category_id: Random.rand(1..Category.count),
        resource_id: resource.id,
      )
    end
  end
  puts 'Created resources'
end

create_users
create_sprints
create_categories
create_resources
