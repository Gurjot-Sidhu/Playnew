# Playlister [![HitCount](http://hits.dwyl.com/Gurjot-Sidhu/Playnew.svg)](http://hits.dwyl.com/Gurjot-Sidhu/Playnew)

A playlist creation app designed to add songs from different platforms

## Motivation
I am part of a few group chats, some of which share songs and playlists. Any one of us would often have to find different platforms that allow us to listen to said song or playlist. Playlister combines all of them into one.

## Build Status
[![Build Status](https://travis-ci.com/Gurjot-Sidhu/GoalFrontend.svg?branch=master)](https://travis-ci.com/Gurjot-Sidhu/GoalFrontend)

## Code Style
[![JavaScript Style Guide](https://cdn.rawgit.com/standard/standard/master/badge.svg)](https://github.com/standard/standard)

## Demo video
[![Demo](http://img.youtube.com/vi/eONSjVLzQwg/0.jpg)](http://www.youtube.com/watch?v=eONSjVLzQwg "Playlister Demo")

## Screenshots
<img width="640" height="480" alt="Screen Shot 2020-06-06 at 1 59 49 PM" src="https://user-images.githubusercontent.com/9657307/83951357-eb557700-a7fe-11ea-8703-f21ab6f8b27a.png">

<img width="640" height="480" alt="Screen Shot 2020-06-06 at 2 01 20 PM" src="https://user-images.githubusercontent.com/9657307/83951359-edb7d100-a7fe-11ea-9585-5539a1097015.png">

## Tech/framework used
**Built with**
- Javascript
- Ruby
- Rails

## Features
- I allowed users to create their own playlists
- I also allowed users to add songs to playlists
- I added update and delete buttons to change songs within playlists
- The user can see all playlists and all songs within each playlist

## Code Example
Event Listener Code

<img width="371" alt="Screen Shot 2020-06-02 at 4 23 44 PM" src="https://user-images.githubusercontent.com/9657307/83566105-7a0b8080-a4ed-11ea-983c-6dbb70365790.png">

In this snippet above, I create an event listener for each playlist to add songs to each playlist. The event listener listens for a click on a button element already on the page. The if statement then checks to see if the value of the button was clicked was Add Song. If it was the function will store the id and textcontent of the nearest "li" tag which is the playlist itself. It will then look for the nearest form and set the values of the text fields to const variables. Then I fire a fetch request and pass in the variables and the playlist id as JSON data for my rails api to receive. If there is a response from the server meaning no error has occurred the next function called renderOneSong will start and the form fields will reset themselves.

## Installation

### Clone down backend repo https://github.com/Gurjot-Sidhu/Playnew/tree/master/playlister-backend

- Download and install `ruby v 2.6.1`
- run `bundle install`
- run `rails db:migrate`
- run `rails db:seed`
- run `rails s`

### Then Clone down this repo
- run `open index.html`

## API Reference 
TBA. Project still in development

## Tests
TBA. Project still in development 

## Contribute
All contributers welcome.If you would like to contribute just ask(permission granted upon request)

## Credits
- Nicky Dover - Encouraged me to pursue this project and offered help if needed with Spotify API https://github.com/NickyEXE 
- Randy Herasme - helped me adjust refactor some of my Javascript methods to be reusable throughout the app https://github.com/randyher
- 

## License
GNU General Public License v3.0 @ Gurjot-Sidhu
