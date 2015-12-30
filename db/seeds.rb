# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
project_list = [
	["Project Uno", "This is a project which will show you the good and the bad"],
	["Second phase", "In this one we will work on Ruby on Rails and maybe JS"],
	["Third one", "Sintra proved to be very useless once you know more about Rails"]
]

project_list.each do |name, description|
  Project.create( name: name, description: description)
end
