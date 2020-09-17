# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Gym.create!(id:2,name:'渋谷店')
Gym.create!(id:3,name:'中野店')
Gym.create!(id:4,name:'上野店')
Gym.create!(id:5,name:'池袋店')
Gym.create!(id:6,name:'練馬店')
