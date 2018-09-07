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

Series.create(
  title:"Promises",
  user_id: User.find_by(email:"HectorFeurtado@gmail.com").id
)

Post.create(
  name:"God will never forsake you",
  description:"blah blah",
  user_id: User.find_by(email:"HectorFeurtado@gmail.com").id,
  series_id: Series.find_by(title:"Promises").id
)

Comment.create(
  body:"This was amazing. I never really viewed this scripture this way. Thank you Sandy!",
  user_id:User.find_by(email:"Sandy@gmail.com").id,
  post_id:Post.find_by(name:"God will never forsake you").id
)