p "Hello from seeds.rb"

Event.destroy_all
User.destroy_all
Idea.destroy_all

event_data = [{
  event_name: "GA-Hackthon - Winter 17'",
  date: "2/25/17",
  content: "Here's some great details about the event. So excited!",
  event_photo: File.open(File.join(Rails.root, "/app/assets/images/event3.jpg")),
  }, {
  event_name: "GA-Hackthon - Spring 17'",
  date: "5/20/17",
  content: "Here's some great details about the event. So excited!",
  event_photo: File.open(File.join(Rails.root, "/app/assets/images/event3.jpg")),
  }, {
  event_name: "GA-Hackthon - Summer 17'",
  date: "9/23/17",
  content: "Here's some great details about the event. So excited!",
  event_photo: File.open(File.join(Rails.root, "/app/assets/images/event3.jpg")),
  }]

event = Event.create(event_data)



user_data = []
10.times do
  first = FFaker::Name.first_name
  last = FFaker::Name.last_name
  user_data << {
    first_name: first,
    last_name: last,
    email: "#{first[0]}_#{last}@example.com".downcase,
    username: "#{first[0]}_#{last}",
    password: 'test'
  }
end
user = User.create(user_data)


idea_data = []
30.times do
  title = FFaker::Book.title
  content = FFaker::CheesyLingo.paragraph
  idea_data << {
    title: title,
    content: content,
    user: user.sample,
    event: event.sample
  }
end
Idea.create(idea_data)


p "Goodbye from seeds.rb"
