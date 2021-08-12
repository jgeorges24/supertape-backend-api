# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mixtape.create(title: "sham-wow", description: "the newest cleaning mixtape", genre: "rap", tracks: 4, likes: 25, dislikes: 400)
Mixtape.create(title: "pop the bob", description: "the newest trednign mixtape", genre: "rap", tracks: 8, likes: 3, dislikes: 4)
Mixtape.create(title: "delta popper", description: "the latest comeback mixtape", genre: "hip-hop", tracks: 9, likes: 5, dislikes: 5)

Opinion.create(content: "this was dumb", mood: "upset", likes: 1, mixtape_id: 1)
Opinion.create(content: "this was cool", mood: "cheerful", likes: 11, mixtape_id: 2)
Opinion.create(content: "this was dumber than rocks", mood: "sad", likes: 2, mixtape_id: 3)


"---------seeding information-----------"