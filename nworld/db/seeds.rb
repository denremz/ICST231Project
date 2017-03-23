# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "nikitforn", password: "nikitay", account_type: "retailer", first: "Christine", middle: "Paga", last: "Fornoles", sex: "Female", address: "Naga City")
User.create(username: "juand123", password: "juan234", account_type: "admin", first: "Juan", middle: "Santos", last: "dela Cruz", sex: "Male", address: "Naga City")