# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'random_data'

# Create Topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all

# create posts

50.times do
  Post.create!(

    topic:  topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#create comments

100.times do
  Comment.create!(

    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by!(

  title: "How To Save America",
  body: "America is headed for disaster. Get out while you still can."
)

Comment.find_or_create_by!(

  body: "I've had it with these comments. I quite Facebook!"

)

#create advertisements
25.times do
  Advertisement.create!(

    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_number
  )
end
advertisements = Advertisement.all



#create questions
75.times do
  Question.create!(

    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end
questions = Question.all


puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} advertisements created"
puts "#{Question.count} questions created"
