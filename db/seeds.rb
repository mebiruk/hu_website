# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(first_name: "fenet",last_name: "fenet", email: "fenet@gmail.com", password: "fenet123", password_confirmation: "fenet123", role: "admin") if Rails.env.development?


# AdminUser.create!(first_name: "fenet",   last_name: "fenet",
# 									email: "fenet@gmail.com", 
# 									password: "fenet123",password_confirmation: "fenet123",  
# 									role: "#{Rails.application.credentials.production[:role]}") if Rails.env.production?