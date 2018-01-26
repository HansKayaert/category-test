# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

main = Category.create(name: "Main")
sub1 = Category.create(name: "Sub1", category: main)
sub2 = Category.create(name: "Sub2", category: main)
sub21 = Category.create(name: "Sub21", category: sub2)
sub22 = Category.create(name: "Sub21", category: sub2)
sub11 = Category.create(name: "Sub11", category: sub1)
sub12 = Category.create(name: "Sub12", category: sub2)

cats = [sub11, sub12, sub21, sub22]

23.times do |n|
  Document.create(title: "Doc##{n}", category: cats.sample)
end