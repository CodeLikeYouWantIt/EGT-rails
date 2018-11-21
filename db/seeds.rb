# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email:"HectorFeurtado@gmail.com",
  first_name:"Hector",
  last_name:"Feurtado",
  password:"123456"
)

User.create(
  email:"Sandy@gmail.com",
  first_name:"Sandy",
  last_name:"Vargas",
  password:"123456"
)

3.times do
  User.create(
    email:Faker::Internet.email,
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    password:"123456"
  )
end

users = User.all

20.times do
  Series.create(
    title:Faker::Book.genre,
    url:Faker::LoremPixel.image,
    user_id: User.find_by(email:users[1+rand(users.length-1)].email).id
  )
end

series = Series.all

20.times do 
  Post.create(
    name:Faker::Book.title,
    body:Faker::Lorem.paragraph,
    user_id: User.find_by(email:users[1+rand(users.length-1)].email).id,
    series_id: Series.find_by(title:series[1+rand(series.length-1)].title).id
  )
end

posts = Post.all

20.times do
  Comment.create(
    body:"This was amazing. I never really viewed this scripture this way. Thank you Sandy!",
    user_id:User.find_by(email:users[1+rand(users.length-1)].email).id,
    post_id:Post.find_by(name:posts[1+rand(posts.length-1)].name).id
  )
end
