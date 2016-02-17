# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless Admin::Admin.any?
  admin_user = Admin::Admin.new({name: 'Admin', email: 'admin@example.com', password: '1234qwer', created_by: 0, updated_by: 0})
  admin_user.save!
end

unless Admin::Course.any?
  (1..2).each do |i|
    course = Admin::Course.new({name: "test #{i}", code: "t#{i}"})
    course.operator = Admin::Admin.first
    course.save!
  end
end
