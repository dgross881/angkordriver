# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
roles = %w(superadmin user)

roles.each.with_index(1) do |role, index|
  Role.create!(name: role) unless Role.find_by(name: role)
  puts "[#{index}..#{roles.length}] Created Role: #{role}"
end

User.create!(email: 'chheiyasab@gmail.com', password: 'saya123', roles: Role.where(name: %w(superadmin))) unless User.find_by(email: 'cheiyasab@gmail.com')


