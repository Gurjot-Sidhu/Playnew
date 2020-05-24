let allPlaylistData;
function start(){
fetch("http://localhost:3000/playlists")
  .then((response) => response.json())
  .then(renderAllPlaylist)
}
start()
playCont = document.querySelector("#playlist-list")

function renderAllPlaylist(allplaylists){
    allplaylists.forEach(renderOnePlaylist)
}

function renderOnePlaylist(playlist){
    outerli = document.createElement("li")
    outerli.id = playlist.id
    outerli.textContent = playlist.name

    newsongbtn = document.createElement("BUTTON")
    newsongbtn.id = "songbtn"
    newsongbtn.className = playlist.id
    newsongbtn.textContent = "Add a song to this playlist"
    newsongbtn.value = "addsong"

    modal = document.createElement("div")
    modal.innerHTML =`
    <form id="newsongform" style = "display: none;">
      <h2>Add new Song</h2>
      <label for="title">Title</label>
      <input type="text" name="title">
      <br>
      <label for="artist">Artist</label>
      <input type="text" name="artist">
      <br>
      <label for="genre">Genre</label>
      <input type="text" name="genre">
      <br>
      <label for="cover">Cover</label>
      <input type="text" name="cover">
      <br>
      <input type="hidden" name="playlistid" value="${playlist.id}">
      <input type="submit" value="Add Song">
    </form>`
    

    outerli.append(newsongbtn)
    outerli.append(modal)
    playCard.append(outerli)
    
    renderAllSongs(playlist)
}

playCard = document.querySelector("#playlist-card")


function renderAllSongs(playlist){
    const songs = [...playlist.songs] 
        lid = document.getElementById(`${playlist.id}`)
        for(var i = 0; i < songs.length;i++){
            const ndiv = document.createElement("div")
            ndiv.id = "info"
            songpara = document.createElement("p")
            songpara.innerHTML = `${songs[i].title} by: ${songs[i].artist}
            <br><br><br>
            <button value="delete"type="button">Delete</button>
            <button value="update"type="button">Update</button>
            `
            pdiv = document.createElement("div")
            pdiv.id = "songimg"
            songimg = document.createElement("img")
            songimg.src = songs[i].cover
            pdiv.append(songimg)
            // songpara.append(songimg)
            ndiv.append(songpara)
            ndiv.append(pdiv)
            lid.append(ndiv)
        }
    
}

function renderOneSong(song){
    const playid = song.playlist.id
    const newSongLi = document.getElementById(`${playid}`)
    const newdiv = document.createElement("div")
    newdiv.id = "info"
    songpara = document.createElement("p")
    songpara.innerHTML = `${song.title} by: ${song.artist}`
    pdiv = document.createElement("div")
    pdiv.id = "songimg"
    songimg = document.createElement("img")
    songimg.src = song.cover
    pdiv.append(songimg)
    // songpara.append(songimg)
    newdiv.append(songpara)
    newdiv.append(pdiv)
    newSongLi.append(newdiv)
}



newForm = document.querySelector("#create-playlist")
newForm.addEventListener("submit",handleNewSubmit)

function handleNewSubmit(event){
    event.preventDefault()

    // playlist = {
    //     name:newplay
    // }
    const newplay = newForm["name"].value

    fetch("http://localhost:3000/playlists", {
      method: `POST`,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        name: newplay})
    }).then(res => res.json())
    .then(renderOnePlaylist)

    newForm.reset()
}


playCont.addEventListener("click",e =>{
    if(e.target.value === "Add Song"){
        event.preventDefault()
        const card = e.target.closest("li")
        newplaylistid = card.id
        newplaylistname = card.textContent
        const songForm = e.target.closest("form")
        
        const newtitle = songForm["title"].value
        const newartist = songForm["artist"].value
        const newgenre = songForm["genre"].value
        const newcover = songForm["cover"].value

        fetch("http://localhost:3000/songs", {
        method: `POST`,
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json",
            },
        body: JSON.stringify({
            title: newtitle,
            artist: newartist,
            genre: newgenre,
            cover: newcover,
            playlist_id: newplaylistid
            })
        }).then(res => res.json())
        .then(renderOneSong)

        songForm.reset()
        
     }
})

playCont.addEventListener("click",e =>{
    const closeli = e.target.closest("li")
        
        const closediv = closeli.querySelector("div")
        let closeform = closediv.querySelector("form")
    if(e.target.value === "addsong" && closeform.style.display === "block"){
        event.preventDefault()
        closeform.style.display = "none"
    }else if (e.target.value === "addsong" && closeform.style.display !== "block"){
        closeform.style.display = "block"
    }else{

    }
})


//      CSS GOALS
// Center and align things
//Capitalize letters and forms text-transform: capitalize;
//Organize playlists into cards with styling