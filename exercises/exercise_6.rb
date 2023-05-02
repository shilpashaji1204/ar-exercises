require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  end
  class Employee < ActiveRecord::Base
    belongs_to :store
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
    validates :store, presence: true
  end

@store1.employees.create(first_name: "Justin", last_name: "Beewer", hourly_rate: 69)
@store1.employees.create(first_name: "Sophia", last_name: "Lorenze", hourly_rate: 50)
@store1.employees.create(first_name: "Zain", last_name: "Dewasi", hourly_rate: 45)
@store2.employees.create(first_name: "Nipun", last_name: "Sharma", hourly_rate: 42)
@store2.employees.create(first_name: "Ian", last_name: "Wang", hourly_rate: 42)
@store2.employees.create(first_name: "Hanzu", last_name: "B", hourly_rate: 42)
@store2.employees.create(first_name: "Lubian", last_name: "Sahib", hourly_rate: 42)