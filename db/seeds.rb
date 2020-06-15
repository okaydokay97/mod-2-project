
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
role1 = Role.create(name: "Cady Heron", actor_id: 1, movie_id: 1, personality_trait: "naive")
role2 = Role.create(name: "Regina George", actor_id: 2, movie_id: 1, personality_trait: "manipulative")
role3 = Role.create(name: "Anna Coleman", actor_id: 1, movie_id: 2, personality_trait: "punk" )

### REVIEWS ###
r1 = Review.create(content: "I liked this movie!", rating: 6, movie_id: 2, user_id: 1)
r2 = Review.create(content: "I hated this movie!", rating: 1, movie_id: 2, user_id: 2)
r3 = Review.create(content: "This movie is hilarious!", rating: 10, movie_id: 1, user_id: 1)

### ADDING PICS ###
#add movie pic
m1.update(img_url: "https://www.gstatic.com/tv/thumb/v22vodart/34319/p34319_v_v8_ak.jpg")
m2.update(img_url: "https://www.gstatic.com/tv/thumb/v22vodart/32185/p32185_v_v8_aa.jpg")

#add actor pic
a1.update(img_url: "https://akns-images.eonline.com/eol_images/Entire_Site/2019114/rs_634x1024-191204125833-634.lindsay-lohan-2004.ct.120419.jpg?fit=around|1268:auto&output-quality=90&crop=1268:auto;center,top")
a2.update(img_url: "https://cdn.britannica.com/83/147883-050-3EB5D697/Rachel-McAdams-2011.jpg")

#add role pic
role1.update(img_url:"https://i.pinimg.com/originals/0c/26/11/0c26119904f2b59d30fb317b57d80853.jpg")
role2.update(img_url:"https://vignette.wikia.nocookie.net/meangirls/images/f/f0/Regina-George-Mean-Girls-GIFs.jpg/revision/latest?cb=20190127212952")
role3.update(img_url:"https://vignette.wikia.nocookie.net/disney/images/6/67/Anna_Coleman_Guitar.jpg/revision/latest?cb=20120527221305")