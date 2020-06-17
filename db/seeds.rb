User.destroy_all
Review.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all
### ACTORS ###
a1 = Actor.create(name: "Lindsay Lohan", bio: "She is crazy", age: 24)
a2 = Actor.create(name: "Rachel McAdams", bio: "Really good actress", age: 32)
a3 = Actor.create(name: "Jamie Lee Curtis", bio: "The Scream Queen", age: 56)

### MOVIES ###
m1 = Movie.create(title: "Mean Girls", genre: "Comedy", description: "Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.", runtime: 97)
m2 = Movie.create(title: "Freaky Friday", genre: "Comedy", description: "An overworked mother and her daughter do not get along. When they switch bodies, each is forced to adapt to the other's life for one freaky Friday.", runtime: 103)
m3 = Movie.create(title: "Halloween", genre: "Horror", description: "Fifteen years after murdering his sister on Halloween night 1963, Michael Myers escapes from a mental hospital and returns to the small town of Haddonfield, Illinois to kill again.
", runtime: 91)

### USERS ###
u1 = User.create(username: "Rubens", password: "laptop", age: 22)
u2 = User.create(username: "Yann", password: "123", age: 27)

### ROLES ###
role1 = Role.create(name: "Cady Heron", actor_id: a1.id, movie_id: m1.id)
role2 = Role.create(name: "Regina George", actor_id: a2.id, movie_id: m1.id)
role3 = Role.create(name: "Anna Coleman", actor_id: a1.id, movie_id: m2.id)
role4 = Role.create(name: "Laurie Strode", actor_id: a3.id, movie_id: m3.id)
role5 = Role.create(name: "Tess Coleman", actor_id: a3.id, movie_id: m2.id)


### REVIEWS ###
r1 = Review.create(content: "I liked this movie!", rating: 6, movie_id: m2.id, user_id: u1.id)
r2 = Review.create(content: "I hated this movie!", rating: 1, movie_id: m2.id, user_id: u2.id)
r3 = Review.create(content: "This movie is hilarious!", rating: 10, movie_id: m1.id, user_id: u1.id)
r4 = Review.create(content: "I was so Scared!", rating: 10, movie_id: m3.id, user_id: u1.id)
r5 = Review.create(content: "Scariest movie of all time", rating: 9, movie_id: m3.id, user_id: u2.id)

### ADDING PICS ###
#add movie pic
m1.update(img_url: "https://www.gstatic.com/tv/thumb/v22vodart/34319/p34319_v_v8_ak.jpg")
m2.update(img_url: "https://www.gstatic.com/tv/thumb/v22vodart/32185/p32185_v_v8_aa.jpg")
m3.update(img_url: "https://upload.wikimedia.org/wikipedia/en/a/af/Halloween_%281978%29_theatrical_poster.jpg")

#add actor pic
a1.update(img_url: "https://akns-images.eonline.com/eol_images/Entire_Site/2019114/rs_634x1024-191204125833-634.lindsay-lohan-2004.ct.120419.jpg?fit=around|1268:auto&output-quality=90&crop=1268:auto;center,top")
a2.update(img_url: "https://cdn.britannica.com/83/147883-050-3EB5D697/Rachel-McAdams-2011.jpg")
a3.update(img_url: "https://www.gstatic.com/tv/thumb/persons/29426/29426_v9_ba.jpg")

#add role pic

role1.update(img_url:"https://i.pinimg.com/originals/51/7e/99/517e99a912d6bc56383c6486c547c6d7.jpg")
role2.update(img_url:"https://vignette.wikia.nocookie.net/meangirls/images/f/f0/Regina-George-Mean-Girls-GIFs.jpg/revision/latest?cb=20190127212952")
role3.update(img_url:"https://vignette.wikia.nocookie.net/disney/images/6/67/Anna_Coleman_Guitar.jpg/revision/latest?cb=20120527221305")
role4.update(img_url: "https://www.arkansashauntedhouses.com/images/articles/4951.jpg")
role5.update(img_url: "https://vignette.wikia.nocookie.net/freaky-friday/images/b/be/003FRF_Jamie_Lee_Curtis_034.jpg/revision/latest/top-crop/width/300/height/300?cb=20141228095214")

#add user pic
u1.update(img_url: "https://pbs.twimg.com/profile_images/1162445050590183424/WL2lQ7OR_400x400.jpg")
u2.update(img_url: "https://images.macrumors.com/t/LvR0raMQUdHK6KxeJLpFA9Ar18Y=/1600x0/filters:quality(90)/article-new/2017/11/crying-tears-of-joy-emoji-250x248.jpg")