# GA-Hackathon - [Live Link](https://ga-hackathon.herokuapp.com/)

<img src="https://cloud.githubusercontent.com/assets/7833470/10423298/ea833a68-7079-11e5-84f8-0a925ab96893.png" width="100">

## General Assembly Hackathon

<i> Full Stack App built for our WDI Group Project </i>

GA-Hackathon was built as a awesome thing to do things!

Users will be able to create a profile, create new ideas, upvote their favorite ideas and RSVP for hackathon events.


Feel free to fork / star / watch for your own personal use.

See the published project at [ga-hackathon.herokuapp.com](https://ga-hackathon.herokuapp.com/)!

#Entity-Relationship Diagram
<img src="http://i.imgur.com/EvfVSwy.png" width="800">


#Technologies Used   

####Languages:
HTML5, JavaScript, CSS, Ruby
####External Libraries:
jQuery, Bootstrap
####Frameworks:
Rails



## Code We're Proud Of
<hr>
Greice: I chose this code given the challenge I had of making bootstrap examples work with rails form_for.
<hr>
```ruby
class User < ApplicationRecord
  COURSES = ['WDI','UXDI','DSI','iOSDI','ADI']
end

<%= form_for @user do |f| %>
 <div class="col-md-6">
     <%= f.label :select_class, class:"input_field_label"  %>
     <%= f.collection_select :course, User::COURSES, :to_s, :to_s,:include_blank => true %>
   </div>
 <%= f.submit "Save", class:"btn btn-danger" %>
<% end %>
```
<hr>
Zach
<hr>
```ruby
def
```
<hr>
Shiv: I chose this code because I have a hard time understanding the relationships when they are implemented into the app itself. The uniqueness is a nice touch because that ensures that that field has not been taken before.
<hr>
```ruby
has_secure_password
  mount_uploader :photo, PhotoUploader
  has_many :ideas, dependent: :destroy
  has_many :events_users
  has_many :events, through: :events_users
  validates :email, uniqueness: true
  validates :username, uniqueness: true
```
<hr>
Alex: This code sorts and limits the amount of ideas that display on the front page.
<hr>
```ruby
//welcomecontroller.rb
sorted_ideas = Event.first.ideas.sort_by &:created_at
@ideas = sorted_ideas.reverse

//welcome#index
<% @ideas.take(3).each do |p| % >
```

## Screen Shots
<img src="http://i.imgur.com/tS1Lsuo.jpg" width="600">
<hr>
<img src="http://i.imgur.com/j9GVwR7.png" width="600">
<hr>
<img src="http://i.imgur.com/ReJXa7Q.png" width="600">

## Trello Board
[Wireframes, Database models & Sprint Planning](https://trello.com/b/O2z9teqw/project-2)

### Contributors
[Greice Silva](https://github.com/greicens), [Zach Cusimano](https://github.com/c00z), [Alex Piane](https://github.com/aapiane09) & [Shivinder Gogna](https://github.com/shivngiggles)
