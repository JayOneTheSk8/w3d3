# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
User.create!(email: 'example@example.com')
User.create!(email: 'who_uses_this@yahoo.com')
User.create!(email: 'lilsayaman@aim.com')
User.create!(email: 'xoxAnimeWeedLord6969xox@hotmail.com')
