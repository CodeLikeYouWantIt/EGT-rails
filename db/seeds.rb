# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

images = [
  "https://images.unsplash.com/photo-1475319122043-5ca9eeceefaf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7ecb34f9d70bfb1e5dcdd70951382f69&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c04bce52ace3d90c8140e0a928a6459a&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1506318164473-2dfd3ede3623?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d7aca7e915a70f426aa75aacaa56c6d0&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1535440216424-0e374e613ee5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=de52befc03f5f94872b48c3945b19819&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1499509599374-00853a315a10?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6c21bb1665058349adcb211989d4e4c1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1436407886995-41f8f5ee43ad?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f5094931339c9c4be0089990ff9176b5&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1528057255452-e149482be68c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8d54cc9d67b23974d6c8990fccf7a03f&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1509021436665-8f07dbf5bf1d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bd750391ad812bfd4b0cc86d08c6dc1b&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1480388198291-d071e45ee9ca?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=aa93e7653d0429bddbe45e2029dd042b&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1519915734606-32d972e3b9b7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0bbf66b90ec9395dea2b22786ac6e3a4&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1530798826479-d534c74df9c5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b46ea4e897248c475a32801f53fc6dea&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1416592380800-d127833365d5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4304e67ea088ff09b12b336cf804e37a&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1541039987211-04bf0587a903?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8473995e4bc8da12618cb1b5870ced78&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1537806899329-543d299330a9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2b4ab0e6cc1d1086e48752813dd04dc0&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1415473655046-e32ca170859f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d67cafe90d05955c524299939732d647&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1514286969571-5142af56b991?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=12f250139fca2206e67f482d44afe14a&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1532568891919-1dc53db04077?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1e1a616e8e5af71951be939ae43197d6&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1505072276982-d6c55de5d5d8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=91815f97df1bb28f1920c203beb57780&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1535440216424-0e374e613ee5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=de52befc03f5f94872b48c3945b19819&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1505231509341-30534a9372ee?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5c40e32803cc8beb2a67c6979ba85405&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1536126750180-3c7d59643f99?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c8e7c3ceb2852c61b79f7d726f42d2b4&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1520642413789-2bd6770d59e3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=36bdccf83d0a45c1e5111052d9de739c&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1482164565953-04b62dcac1cd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=513c65604be139b32f55af2c0b4258b7&auto=format&fit=crop&w=500&q=60"
]

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

20.times do |i|
  Series.create(
    title:Faker::Book.genre,
    url:images[i],
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
