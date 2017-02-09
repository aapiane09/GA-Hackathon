p "Hello from seeds.rb"

Idea.delete_all

idea_data = []
3.times do
  title = FFaker::Book.title
  content = FFaker::CheesyLingo.paragraph
  idea_data << {
    title: title,
    content: content,
  }
end

Idea.create(idea_data)


p "Goodbye from seeds.rb"


Event.delete_all

event_data = []
3.times do
  title = FFaker::Book.title

  event_data << {
    event_name: title
  }
end

Event.create(event_data)
