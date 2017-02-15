# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'random_data'

#create posts



50.times do
  Post.create!(

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

  #I feel like I'm missing how to tie the comment to the post.
  body: "I've had it with these comments. I quite Facebook!"

)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"




#create advertisements
25.times do
  Advertisement.create!(

    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_number
  )
end
advertisements = Advertisement.all

puts "Seed #2 finished"
puts "#{Advertisement.count} advertisements created"
