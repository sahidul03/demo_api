# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
    { id: 1, name: "Bengali" },
    { id: 2, name: "English" },
    { id: 3, name: "Japanese" },
    { id: 4, name: "Spanish" },
    { id: 5, name: "Dutch" }
].each do |language|
  Language.where(id: language[:id], name: language[:name]).first_or_create
end

[
    { id: 1, name: "Black" },
    { id: 2, name: "Red" },
    { id: 3, name: "Green" },
    { id: 4, name: "Yellow" },
    { id: 5, name: "Brown" }
].each do |level|
  Level.where(id: level[:id], name: level[:name]).first_or_create
end

[
    { id: 1, name: "Trade 1" },
    { id: 2, name: "Trade 2" },
    { id: 3, name: "Trade 3" },
    { id: 4, name: "Trade 4" },
    { id: 5, name: "Trade 5" }
].each do |trade|
  Trade.where(id: trade[:id], name: trade[:name]).first_or_create
end