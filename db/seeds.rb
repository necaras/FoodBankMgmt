# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	

[:Admin, :Volunteer_Coordinator, :Client_Services, :Donations_Coordinator].each { |r| Role.create(:name => r.to_s.camelize) }
User.create! do |u|
	u.username = 'admin'
	u.email = 'admin@localhost.local'
	u.password = 'password'
	u.password_confirmation = 'password'
	u.role_ids = [Role.find_by_name('Admin')]
end
