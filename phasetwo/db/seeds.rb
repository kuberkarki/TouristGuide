# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

master = (1..100).to_a.each do |master|
	main = Master.create(name: "Master#{master}", description: "Master Description#{master}")
	main.secondaries.create(name: "Secondary#{master}", description: "Secondary Description #{master}")
end
