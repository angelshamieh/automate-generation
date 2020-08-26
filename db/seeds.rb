# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts 'Creating 100 employees...'
units = ['Engineering', 'Management','Community', 'Lawyer']
100.times do
  employee = Employee.new(
    name: Faker::name,
    unit: units.sample
  )

  employee.save!
end
puts 'Finished!'


