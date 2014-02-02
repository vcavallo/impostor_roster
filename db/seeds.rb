# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = Post.create(
  [
    { field: "Ruby", months_experience: 12, inability: "RSpec Testing" },
    { field: "Landscape Architecture", months_experience: 24, inability: "Large shrubs. Well, any shrubs, really..." },
    { field: "Medicine", months_experience: 50, inability: "Circulatory system." }
  ]
)
