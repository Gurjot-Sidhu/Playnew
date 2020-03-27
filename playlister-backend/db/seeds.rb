# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


new1 = Playlist.create(
    name: "Bangers"
   
)
song1 = new1.songs.create(
    title: "All My Chains",
    artist: "Lil Uzi Vert",
    genre: "rap",
    cover: "https://images.genius.com/a98e0540f810c7953c5e3213f7ffb10b.999x999x1.png"
)

song2 = new1.songs.create(
    title: "Broke Boi",
    artist: "Playboi Carti",
    genre: "rap",
    cover: "https://images.complex.com/complex/image/upload/c_fill,dpr_auto,q_90,w_920/fl_lossy,pg_1/xxjplorpo6pntxowipbj.jpg"
)

song3 = new1.songs.create(
    title: "MIGO",
    artist: "D Savage",
    genre: "rap",
    cover: "https://i1.sndcdn.com/artworks-000569283065-j1wrha-t500x500.jpg"
)

song4 = new1.songs.create(
    title: "In My Coupe",
    artist: "Rich the Kid ft. Jay Critch and Famous Dex",
    genre: "rap",
    cover: "https://t2.genius.com/unsafe/242x0/https%3A%2F%2Fimages.genius.com%2F9ff20874a3abd787a9608e245dbc46a3.355x355x1.png"
)
song9 = new1.songs.create(
    title: "Feel This",
    artist: "Playboi Carti",
    genre: "rap",
    cover: "https://miro.medium.com/max/2000/1*kybxJ9baHi9ixEMqLmiJiw.jpeg"
)
song1 = new1.songs.create(
    title: "Im With The Squad",
    artist: "Playboi Carti ft. Lil Uzi Vert",
    genre: "rap",
    cover: "https://images.genius.com/a98e0540f810c7953c5e3213f7ffb10b.999x999x1.png"
)

new2 = Playlist.create(
    name:"Late Night Driving"
)

song5 = new2.songs.create(
    title: "Impossible",
    artist: "Travis Scott",
    genre: "rap",
    cover: "https://t2.genius.com/unsafe/440x440/https%3A%2F%2Fimages.genius.com%2F937ebfe41ce59f14c6ecff9976182911.600x600x1.jpg"
)

song5 = new2.songs.create(
    title: "Feels Like Death",
    artist: "Levi Carter ft. LUCKI",
    genre: "rap",
    cover: "https://t2.genius.com/unsafe/242x0/https%3A%2F%2Fimages.genius.com%2Fc41649103f55d70a59eb1c753aad0a74.500x500x1.jpg"
)

song6 = new2.songs.create(
    title: "Drugs You Should Try It",
    artist: "Travis Scott",
    genre: "rap",
    cover: "https://upload.wikimedia.org/wikipedia/en/0/08/Album_Cover_of_Travis_Scott%27s_Day_Before_Rodeo.jpg"
)
song7 = new2.songs.create(
    title: "Call Me",
    artist: "Nav",
    genre: "rap",
    cover: "https://t2.genius.com/unsafe/440x440/https%3A%2F%2Fimages.genius.com%2F8aa810dbedc4bd7937acee22f2f33b15.1000x1000x1.png"
)

song8 = new2.songs.create(
    title: "Lonely",
    artist: "Yung Bans ft. Lil Skies",
    genre: "rap",
    cover: "https://elevator-media.imgix.net/app/uploads/2017/12/15081758/23734946_1759471421013107_5985467793800167424_n.jpg?fm=pjpg&ixlib=php-1.2.1&s=6fa3709c29c9a7c069a220a9081b4ca5"
)

new3 = Playlist.create(
    name:"Mainstream"
)
song10 = new3.songs.create(
    title: "Circles",
    artist: "Post Malone",
    genre: "pop",
    cover: "https://upload.wikimedia.org/wikipedia/en/a/a5/Post_Malone_-_Circles.png"
)

song11 = new3.songs.create(
    title: "Blinding Lights",
    artist: "The Weekend",
    genre: "pop",
    cover: "https://upload.wikimedia.org/wikipedia/en/e/e6/The_Weeknd_-_Blinding_Lights.png"
)
