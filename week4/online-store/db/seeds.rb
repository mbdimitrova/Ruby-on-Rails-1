# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brands = Brand.create([{ name: 'Philips', description: 'They actualy make toothbrishes' },
                       { name: 'Telefunken', description: 'Old-school TVs'},
                       { name: 'Dell', description: 'Laptops and stuff'}])
puts "Two brands are created."
