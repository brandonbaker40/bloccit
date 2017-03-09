# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'random_data'

# Create Users
5.times do
   User.create!(
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all

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

    user:   users.sample,
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

  topic:  topics.sample,
  title: "How To Save America",
  body: "America is headed for disaster. Get out while you still can.",
  user:  users.sample
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

50.times do
  SponsoredPost.create!(

    topic:  topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_number
  )
end
posts = SponsoredPost.all

# Create an admin user
 admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )

 # Create a member
 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
 )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} advertisements created"
puts "#{Question.count} questions created"
