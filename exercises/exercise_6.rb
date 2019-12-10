require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Dick", last_name: "Burch", hourly_rate: 90)
@store1.employees.create(first_name: "Marry", last_name: "Nessesery", hourly_rate: 150)
@store1.employees.create(first_name: "Alise", last_name: "Wonderland", hourly_rate: 110)
@store1.employees.create(first_name: "Victor", last_name: "Zhabskyi", hourly_rate: 80)

@store2.employees.create(first_name: "Mamay", last_name: "Opskor", hourly_rate: 45)
@store2.employees.create(first_name: "Linda", last_name: "McDonald", hourly_rate: 75)
@store2.employees.create(first_name: "Raymond", last_name: "Green", hourly_rate: 180)
@store2.employees.create(first_name: "Elisabeth", last_name: "Forgiven", hourly_rate: 50)
@store2.employees.create(first_name: "Serg", last_name: "Polish", hourly_rate: 100)