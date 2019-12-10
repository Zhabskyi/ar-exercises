require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please enter a store name"
store_name = gets.chomp
store = Store.create(name: store_name)

for error in store.errors.messages do
  puts "New ERROR: #{error}"
end

#puts "#{store.errors.messages}"