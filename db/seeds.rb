# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

area = Area.create([
  {name: 'Stadionbuurt', description: 'Area in Amsterdam-Zuid'},
  {name: 'Molenwijk', description: 'Area in Amsterdam-Noord'},
  {name: 'Buitenveldert', description: 'Area in Amsterdam-Zuid'}
    ])

review = Review.create([
  {story: 'This is a nice place to live', writer: 'Fred', area_id:1, rating: 8},
  {story: 'Totally not a nice area', writer: 'Theo',area_id:1, rating: 4},
  {story: 'Very cool area', writer: 'Lucy',area_id:2, rating: 7}
  ])
