# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

members_list = [["first", "first"], ["second", "second"],["third", "third"],["fourth", "fourth"],["fifth", "fifth"]]
members_list.each_with_index do |member,index|
  user = User.new
  # user.name = "#{member[1]}"
  user.email = "#{member[0]}@test.com"
  user.password = "0147852"
  user.password_confirmation = "0147852"

  user.save!
end


group = Group.new
group.name = "beerNchicken"
group.category = "programing"
group.leader_id = "1"
group.start_time = "20160823"
group.end_time = "20170823"
group.save!


season = Season.new
season.name = "butterCookie"
season.group_id = "1"
season.leader_id = "1"
season.start_time = "20160823"
season.end_time = "20160923"
season.save!