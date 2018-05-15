# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sections = Section.create([{title: 'Sports'}, {title: 'Headlines'}, {title: 'Science' }])

stories = Story.create([{title: 'Lottery up to 100000000000'}, { title: 'Coding is hard'}])

# comments

Section.first.stories << Story.all
