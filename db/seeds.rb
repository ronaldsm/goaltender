# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(email: 'root@gmail.com', encrypted_password: 'welcome', admin: true)

User.create!(email: 'root@gmail.com', password: 'welcome', password_confirmation: 'welcome', admin: 'true')
Core.create(persona: 'SeedPersona', name: 'My seeded Core test', short_description: 'short description', details: 'details for my seeded test' )
