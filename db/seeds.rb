# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





### ACTORS ###
a1 = Actor.create(name: "Lindsay Lohan", bio: "She is crazy", age: 24)
a2 = Actor.create(name: "Rachel McAdams", bio: "Really good actress", age: 32)

### MOVIES ###
m1 = Movie.create(title: "Mean Girls", genre: "Comedy", description: "Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.", runtime: 97)
m2 = Movie.create(title: "Freaky Friday", genre: "Comedy", description: "An overworked mother and her daughter do not get along. When they switch bodies, each is forced to adapt to the other's life for one freaky Friday.", runtime: 103)

### USERS ###
u1 = User.create(username: "Rubens", age: 22)
u2 = User.create(username: "Yann", age: 27)

### ROLES ###
r1 = Role.create(name: "Cady Heron", actor_id: 1, movie_id: 1)
r2 = Role.create(name: "Regina George", actor_id: 2, movie_id: 1)
r1 = Role.create(name: "Anna Coleman", actor_id: 1, movie_id: 2)

### REVIEWS ###
r1 = Review.create(content: "I liked this movie!", rating: 6, movie_id: 2, user_id: 1)
r2 = Review.create(content: "I hated this movie!", rating: 1, movie_id: 2, user_id: 2)
r3 = Review.create(content: "This movie is hilarious!", rating: 10, movie_id: 1, user_id: 1)