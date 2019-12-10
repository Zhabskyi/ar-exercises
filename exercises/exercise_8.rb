require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'


puts "Exercise 8"
puts "----------"

@store4 = Store.find_by(id: "4")
@store4.employees.create(first_name: "Marko", last_name: "Vovchok", hourly_rate: 199)
