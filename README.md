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

* Deployment instructions - 

For dev/local only, use 'master branch' simply start the rails server in development. 

For production, use 'production branch' on heroku, through heroku's console run 'rails db:migrate' then go to live url and should work. 

About this project - 

The idea of the project was to build a scoreboard which would enable one user to input scores for football teams and those scores to be displayed dynamically on a scoreboard. 

I am using devise I have unable to the application to include authentication meaning that you can register uses and they can have added permissions which allow them to create posts/input football scores which will then become visible on the homepage which is open to any user to view.

Having never used Rails or Ruby before this was a tough challenge the hardest part was configuring and downloading Ruby and rails onto my machine so that I could actually build the project using that framework!  Once I got over the configuration issues I found Ruby on Rails quite fun to use the fact that when you install a package it automatically installs the files needed to use that package was really really useful.  I found there were some quite quirky things about rails that I don't totally understand.  For example I initially tried to build this application with Rails 7 but found that devise wouldn't work properly. The devise forms wouldn't submit and therefore I was unable to register login logout as a user.  I then went on to try and build the project in Rails 6 where I noticed that the same issue occurred when I styled the devise forms with bootstrap, turning the links into buttons seemed to make that issue occur, and then went back through my Rails 7 version to try to adjust the styling but this didn't fix the issue and therefore I have stuck with my Rail 6 version. After thinking about it I think this may have had something to do with jQuery or Javascript not being configured in the same way on Rails 7 vs Rails 6.

The next thing I try to do was implement action cable. I have never used websocket before let alone action cable.  I don't have a great understanding of exactly what the functionality of these packages are. I believe they allow a constant relationship between client side and the server to enable data to be transferred in real time without the use of needing to refresh the page or a settimeout function in JavaScript. A good example of this is an online chat bot where you can see if someone is online or typing.  Unfortunately due to the lack of knowledge behind action cable that I have I was unable to implement it at this point to the project.
There is branch available on GitHub (3rdtimelucky) to show how far I got with it but I felt a little lost at this point.  

I've tried to keep the style is simple but functional. I am relativley happy with what I have built as 5 days ago I have never even looked at Ruby script. 

Areas to build on would be- 
Implementing Action Cable
implement smtp and mailer actions so that the password reset and account confirmation emails actually send. 
Making the UI responsive more appealing to look at
Gaining a much better understanding of Ruby on Rails in general
Being confident with Ruby Version Managers (for this I used chruby)

