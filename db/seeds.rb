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
idea = Idea.create(idea_data)

Idea.create(idea_data)


p "Goodbye from seeds.rb"
