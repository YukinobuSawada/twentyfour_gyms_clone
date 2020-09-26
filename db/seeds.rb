# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'sawada@kanri.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa') if Rails.env.production?
Gym.create!(id:1,name:'原宿店',address:'東京都渋谷区神宮前1丁目', latitude: '35.6704049',longitude: '139.7034805',postal_code:'150-0001')
Gym.create!(id:2,name:'渋谷店',address:'東京都渋谷区道玄坂1丁目',latitude: '35.6564473',longitude: '139.696958',postal_code:'150-0043')
Gym.create!(id:3,name:'中野店',address:' 東京都中野区中野4丁目', latitude: '35.7060109',longitude: '139.6631932',postal_code:'164-8501')
Gym.create!(id:4,name:'上野店',address:' 東京都台東区東上野6丁目',latitude: '35.7182577',longitude: '139.7812875',postal_code:'110-0015')
Gym.create!(id:5,name:'池袋店', address:'東京都豊島区池袋2丁目', latitude: '35.7326031',longitude: '139.706197',postal_code:'171-001')
Gym.create!(id:6,name:'練馬店',address:'東京都練馬区春日町6丁目', latitude: '35.7538252',longitude: '139.706197',postal_code:'179-0074')
