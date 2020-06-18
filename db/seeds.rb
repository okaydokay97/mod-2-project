User.destroy_all
Review.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all
### ACTORS ###
a1 = Actor.create(name: "Lindsay Lohan", bio: "She is crazy", age: 24)
a2 = Actor.create(name: "Rachel McAdams", bio: "Really good actress", age: 32)
a3 = Actor.create(name: "Jamie Lee Curtis", bio: "The Scream Queen", age: 56)
a4 = Actor.create(name: "Emma Watson", bio: "She is elegant", age: 30)
a5 = Actor.create(name: "Daniel Radcliffe", bio: "Best known for playing Harry Potte", age: 30)
a6 = Actor.create(name: "Rupert Grint", bio: "Good actor", age: 31)


### MOVIES ###
m1 = Movie.create(title: "Mean Girls", genre: "Comedy", description: "Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.", runtime: 97)
m2 = Movie.create(title: "Freaky Friday", genre: "Comedy", description: "An overworked mother and her daughter do not get along. When they switch bodies, each is forced to adapt to the other's life for one freaky Friday.", runtime: 103)
m3 = Movie.create(title: "Halloween", genre: "Horror", description: "Fifteen years after murdering his sister on Halloween night 1963, Michael Myers escapes from a mental hospital and returns to the small town of Haddonfield, Illinois to kill again.", runtime: 91)
m4 = Movie.create(title: "Harry Potter", genre: "Fantasy", description: "A series of fantasy novels written by British author J. K. Rowling.", runtime: 130)
m5 = Movie.create(title: "Noah", genre: "Drama", description: "This is the Book of Genesis after a page one rewrite.", runtime: 138)
m6 = Movie.create(title: "Beauty and the beast", genre: "Fantasy", description: "American musical romantic fantasy film directed by Bill Condon.", runtime: 139)
m7 = Movie.create(title: "Swiss Army Man", genre: "Adventure", description: "American comedy-drama adventure film written and directed by Daniel Kwan and Daniel Scheinert.", runtime: 97)
m8 = Movie.create(title: "Moonwalkers", genre: "Comedy", description: "French comedy film directed by Antoine Bardou-Jacquet in his directorial debut, and written by Dean Craig.", runtime: 107)




### USERS ###
u1 = User.create(username: "Rubens", password: "laptop", age: 22)
u2 = User.create(username: "Yann", password: "123", age: 27)

### ROLES ###
role1 = Role.create(name: "Cady Heron", actor_id: a1.id, movie_id: m1.id, personality_trait: "thoughtful")
role2 = Role.create(name: "Regina George", actor_id: a2.id, movie_id: m1.id, personality_trait: "intelligent")
role3 = Role.create(name: "Anna Coleman", actor_id: a1.id, movie_id: m2.id, personality_trait: "dramatic")
role4 = Role.create(name: "Laurie Strode", actor_id: a3.id, movie_id: m3.id, personality_trait: "shy")
role5 = Role.create(name: "Tess Coleman", actor_id: a3.id, movie_id: m2.id, personality_trait: "confident")
role6 = Role.create(name: "Hermione Granger", actor_id: a4.id, movie_id: m4.id, personality_trait: "intellect and cleverness")
role7 = Role.create(name: "Harry Potter", actor_id: a5.id, movie_id: m4.id, personality_trait: "humble")
role8 = Role.create(name: "Ron Weasley", actor_id: a6.id, movie_id: m4.id, personality_trait: "funny and brave")
role9 = Role.create(name: "Ila", actor_id: a4.id, movie_id: m5.id, personality_trait: "survivor")
role10 = Role.create(name: "Belle", actor_id: a4.id, movie_id: m6.id, personality_trait: "intelligence")
role11 = Role.create(name: "Manny", actor_id: a5.id, movie_id: m7.id, personality_trait: "forgotten everything")
role12 = Role.create(name: "Jonny", actor_id: a6.id, movie_id: m8.id, personality_trait: "down-and-out rock promoter")




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
m4.update(img_url: "https://i.ytimg.com/vi/k4j_Uw5Ot6o/movieposter.jpg")
m5.update(img_url: "https://ffe-ugc.s3.amazonaws.com/intlportal2/dev-temp/en-GB/____53cea124c5643.jpg")
m6.update(img_url: "https://www.gstatic.com/tv/thumb/v22vodart/11606343/p11606343_v_v8_as.jpg")
m7.update(img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Swiss_Army_Man_poster.png/220px-Swiss_Army_Man_poster.png")
m8.update(img_url: "https://upload.wikimedia.org/wikipedia/en/d/d9/Moonwalkers_Movie_Poster.jpg")




#add actor pic
a1.update(img_url: "https://akns-images.eonline.com/eol_images/Entire_Site/2019114/rs_634x1024-191204125833-634.lindsay-lohan-2004.ct.120419.jpg?fit=around|1268:auto&output-quality=90&crop=1268:auto;center,top")
a2.update(img_url: "https://cdn.britannica.com/83/147883-050-3EB5D697/Rachel-McAdams-2011.jpg")
a3.update(img_url: "https://www.gstatic.com/tv/thumb/persons/29426/29426_v9_ba.jpg")
a4.update(img_url: "https://m.media-amazon.com/images/M/MV5BMTQ3ODE2NTMxMV5BMl5BanBnXkFtZTgwOTIzOTQzMjE@._V1_.jpg")
a5.update(img_url: "https://cdn.britannica.com/77/152977-050-7F5E9A64/Daniel-Radcliffe-2011.jpg")
a6.update(img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Rupert_Grint_2010_3.jpg/220px-Rupert_Grint_2010_3.jpg")


#add role pic

role1.update(img_url:"https://i.pinimg.com/originals/51/7e/99/517e99a912d6bc56383c6486c547c6d7.jpg")
role2.update(img_url:"https://vignette.wikia.nocookie.net/meangirls/images/f/f0/Regina-George-Mean-Girls-GIFs.jpg/revision/latest?cb=20190127212952")
role3.update(img_url:"https://vignette.wikia.nocookie.net/disney/images/6/67/Anna_Coleman_Guitar.jpg/revision/latest?cb=20120527221305")
role4.update(img_url: "https://www.arkansashauntedhouses.com/images/articles/4951.jpg")
role5.update(img_url: "https://vignette.wikia.nocookie.net/freaky-friday/images/b/be/003FRF_Jamie_Lee_Curtis_034.jpg/revision/latest/top-crop/width/300/height/300?cb=20141228095214")
role6.update(img_url: "https://vignette.wikia.nocookie.net/characters/images/a/a5/Latest_%2810%29.jpg/revision/latest?cb=20141230074301")
role7.update(img_url: "https://api.time.com/wp-content/uploads/2014/07/301386_full1.jpg")
role8.update(img_url: "https://media.apnarm.net.au/media/images/2018/12/03/imagev175e6ab37e0819119dc52ddad88d8f217-x1k96wssoo7vsxiber2_t1880.jpg")
role9.update(img_url: "https://i.pinimg.com/originals/af/5e/6e/af5e6eca15a2b418acd9f56994aeeb21.jpg")
role10.update(img_url: "https://theadventurine.com/wp-content/uploads/2017/03/534-x-400-emma-watson-er-cuff-inside.jpg")
role11.update(img_url: "https://i.dailymail.co.uk/i/pix/2015/08/12/11/2B4BA57700000578-0-image-a-48_1439375561909.jpg")
role12.update(img_url: "https://assets.mugglenet.com/wp-content/uploads/2016/01/rupert-moonwalkers-screen-cap-2.jpg")


#add user pic
u1.update(img_url: "https://pbs.twimg.com/profile_images/1162445050590183424/WL2lQ7OR_400x400.jpg")
u2.update(img_url: "https://images.macrumors.com/t/LvR0raMQUdHK6KxeJLpFA9Ar18Y=/1600x0/filters:quality(90)/article-new/2017/11/crying-tears-of-joy-emoji-250x248.jpg")