# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


new1 = Playlist.create(
    name: "gg"
   
)
song1 = new1.songs.create(
    title: "New money",
    artist: "not me",
    genre: "trash",
    cover: "https://i.pinimg.com/474x/b4/75/00/b4750046d94fed05d00dd849aa5f0ab7.jpg"
)



# 10.times do
#     playlist = Playlist.create(
#         name: "gg"
#     )
