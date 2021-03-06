# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#news_API_key = 8c9cb125d4414d3981669820dd0873d6


# top_stories = Story.create([{title: 'Fist-Pumping Jared Kushner Leaves Jerusalem Embassy Refreshed And Ready To Solve Next Global Crisis'}, { title: 'Trump Preemptively Tells Melania He Wont Give Her A Kidney'}])

# # comments

# Section.first.stories << top_stories
# require 'pry'
#******************HTTP REQUEST ****************************
news_api = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=8c9cb125d4414d3981669820dd0873d6")
headlines_data = JSON.parse(news_api)

#****************SECTIONS*************************
sections = Section.create([{title: "Top Stories"}, {title: "World"}, {title: "Science" }, {title: "U.S."}, {title: "Business"}, {title: "Technology"}])

top_stories = Section.all.find(id = 1)

#***************STORIES***************************

headline_articles = headlines_data["articles"].each do |article| 
  story = Story.create(title: article["title"], description: article["description"], url: article["url"], url_to_image: article["urlToImage"], comments: [Comment.new(content: Faker::Lorem.sentence)])
  #****************ASSOCIATION********************
  top_stories.stories << story
end




