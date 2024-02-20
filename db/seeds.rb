# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
  { last_name: "Clawson", first_name: "Eno", email: "Eno@eno.com", password: "password", address: "home", phone_number: "555-1234" },
])

Tattooer.create!([
  { last_name: "Davis", first_name: "Jen", email: "jen@jen.com", password: "password", phone_number: "555-4321", tattoo_shop: "Outer Limits" },
])

Application.create!([
  { user_id: 1, tattooer_id: 1, amount: 100, number_of_months: 5, date_of_appt: "01/01/24", approved: true, description: "butterfly" },
])
