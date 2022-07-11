# README

You can view the application here - https://jjd-football-scoreboard.herokuapp.com/

* Ruby version - 
I am using ruby 2.7.6-p219 & rails 6.1.6

* System dependencies - 
"dependencies": {
    "@rails/actioncable": "^6.0.0",
    "@rails/activestorage": "^6.0.0",
    "@rails/ujs": "^6.0.0",
    "@rails/webpacker": "5.4.3",
    "turbolinks": "^5.2.0",
    "webpack": "^4.46.0",
    "webpack-cli": "^3.3.12"
  },

* Configuration - 
I am using postgresql v-14

* Deployment instructions - simply start the rails server in development. 

About this project - 

The idea of the project was to build a scoreboard which would enable one user to input scores for football teams and those scores to be displayed dynamically on a scoreboard. 

I am using device I have unable to the application to include authentication meaning that you can register uses and they can have I added permissions which allow them to create posts also known as input football scores which will then become visible on the homepage which is open to any user to view.

Having never used Rails or Ruby before this was a tough challenge the hardest part was configuring and downloading Ruby and rails onto my machine so that I could actually build the project using that framework!  Once I got over the configuration issues I found Ruby on rails quite fun to use the fact that when you install a package it automatically installs the files needed to use that package was really really useful.  I found there were some quite quirky things about rails that I don't totally understand.  For example I initially tried to build this application with rails 7 but found that devise wouldn't work properly. The devise forms wouldn't submit and therefore I was unable to register login logout as a user.  I then went on to try and build the project in rails 6 where I noticed that the same issue occurred when I styled the devise forms with bootstrap, turning the links into buttons seem to make that issue occur, and then went back through my rails 7 version to try to adjust the styling but this didn't fix the issue and therefore I have stuck with my rail six version. After thinking about it I think this may have had something to do with jQuery or Javascript not being configured in the same way on rails 7 vs rails 6.

The next thing I try to do was implement action cable.  And I have never used websocket before let alone action cable.  I don't have a great understanding of exactly what the functionality of these packages are. I believe they allow a constant relationship between client side and the server to enable data to be transferred in real time without the use of needing to refresh the page or a settimeout function in JavaScript. A good example of this is an online chat bot where you can see if someone is online or typing.  Unfortunately due to the lack of knowledge behind action cable that I have I was unable to implement it at this point to the project.
There is branch available on GitHub to show how far I got with it but I felt a little lost at this point.  

I've tried to keep the style is simple but functional. I am relativley happy with what I have built as 5 days ago I have never even looked at Ruby script. 

Areas to build on would be- 
Implementing Action Cable
Making the UI responsive
Gaining a much better understanding of Ruby on Rails in general
Being confident with Ruby Version Managers (for this i used chruby)

