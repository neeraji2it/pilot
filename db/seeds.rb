# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Client.create(:first_name => "Bob", :last_name => "Reddy", :email => "bob@gmail.com", :telephone => "09998885555", :mobile => "8889997755")
Client.create(:first_name => "Mark", :last_name => "Reddy", :email => "mark@gmail.com", :telephone => "09998886666", :mobile => "8889997855")
Client.create(:first_name => "Neeraj", :last_name => "Reddy", :email => "neeraj@gmail.com", :telephone => "09998881111", :mobile => "8889995755")
Client.create(:first_name => "Rails", :last_name => "Reddy", :email => "rails@gmail.com", :telephone => "09998882222", :mobile => "8889990755")
Client.create(:first_name => "Joel", :last_name => "Reddy", :email => "joel@gmail.com", :telephone => "09998883333", :mobile => "8889997955")