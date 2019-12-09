require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store = Store.create(name: "Surrey", annual_revenue: 224000,  mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: 1900000,  mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: 430000,  mens_apparel: true, womens_apparel: false)

@mens_stores = Store.where(mens_apparel: true)

for value in @mens_stores do
  puts "Store name #{value.name}"
  puts "Annual revenue #{value.annual_revenue}"
end

@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < 1000000')

for value in @womens_stores do
  puts "Womens store name #{value.name}"
  puts "Annual revenue #{value.annual_revenue}"
end
