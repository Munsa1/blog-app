# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(Name: 'Tom', Photo: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Mexico.')
user2 = User.create(Name: 'Lilly', Photo: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Poland.')
user3 = User.create(Name: 'Anna', Photo: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Poland.')

post1 = Post.create(author: User.first, Title: 'Hello', Text: 'This is my first post')
post1 = Post.create(author: User.second, Title: 'Hello', Text: 'This is my second post')
post1 = Post.create(author: User.third, Title: 'Hello', Text: 'This is my third post')
post1 = Post.create(author: User.first, Title: 'Hello all', Text: 'This is my fifth post')

comment1 = Comment.create(post: Post.first,author: User.first, Text: 'Hi Tom!' )
comment2 = Comment.create(post: Post.first,author: User.first, Text: 'Hi Tom!' )
comment3 = Comment.create(post: Post.second,author: User.second, Text: 'Hi Lilly!' )
comment4 = Comment.create(post: Post.second,author: User.second, Text: 'Hi Lilly!' )
comment5 = Comment.create(post: Post.third,author: User.third, Text: 'Hi Anna!' )
comment5= Comment.create(post: Post.third,author: User.third, Text: 'Hi Anna!' )