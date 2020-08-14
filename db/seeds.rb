Favorite.delete_all
ArtistFestival.delete_all
Organizer.delete_all
Artist.delete_all
Fan.delete_all
Festival.delete_all

#ORGANIZERS
organizer1 = Organizer.new(name: "Live Nation")
organizer2= Organizer.new(name: "Insomniac")
organizer3 = Organizer.new(name: "SFX entertainment")
organizer4 = Organizer.new(name: "AEG")


#ARTISTS
gaga = Artist.create(name: "Lady Gaga", genre:"Pop", artist_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Lady_Gaga_interview_2016.jpg/220px-Lady_Gaga_interview_2016.jpg", bio: "Stefani Joanne Angelina Germanotta  (born March 28, 1986), known professionally as Lady Gaga, is an American singer, songwriter, record producer, actress, and businesswoman. She is known for reinventing herself throughout her career and for her versatility in numerous areas of the entertainment industry.", video:"https://www.youtube.com/watch?v=bo_efYhYU2A")
artist1 = Artist.create(name: "Pearl Jam", genre:"Rock", artist_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/PJ_2012.jpg/300px-PJ_2012.jpg", bio: "Pearl Jam is an American rock band formed in 1990 in Seattle, Washington. The band's lineup consists of founding members Jeff Ament (bass guitar), Stone Gossard (rhythm guitar), Mike McCready (lead guitar), and Eddie Vedder (lead vocals, guitar), as well as Matt Cameron (drums), who joined in 1998. Keyboardist Boom Gaspar has also been a touring/session member with the band since 2002. Drummers Jack Irons, Dave Krusen, Matt Chamberlain, and Dave Abbruzzese are former members of the band.
", video: "https://www.youtube.com/watch?v=MS91knuzoOA")
artist2 = Artist.create(name: "Billie Eilish", genre:"Electropop", artist_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Billie_Eilish_2019_by_Glenn_Francis_%28cropped%29_2.jpg/220px-Billie_Eilish_2019_by_Glenn_Francis_%28cropped%29_2.jpg", bio: "Billie Eilish Pirate Baird O'Connell (born December 18, 2001) is an American singer and songwriter. She first gained attention in 2015 when she uploaded the song 'Ocean Eyes' to SoundCloud, which was subsequently released by the Interscope Records subsidiary Darkroom. The song was written and produced by her brother Finneas, with whom she collaborates on music and live shows. Her debut EP, Don't Smile at Me (2017), became a sleeper hit, reaching the top 15 in the US, UK, Canada, and Australia.", video:"https://www.youtube.com/watch?v=DyDfgMOUjCI")
artist3 = Artist.create(name: "Madonna", genre:"Pop", artist_image: "https://en.wikipedia.org/wiki/File:Madonna_Rebel_Heart_Tour_2015_-_Stockholm_(23051472299)_(cropped).jpg", bio: "Madonna Louise Ciccone ( born August 16, 1958) is an American singer-songwriter, actress, author, and record executive. Having been referred to as the 'Queen of Pop' since the 1980s, she is regarded as one of the most impactful figures in popular culture. Madonna is noted for her continual reinvention and versatility in music production, songwriting, and visual presentation. She has pushed the boundaries of artistic expression in mainstream music, while remaining completely in charge of every aspect of her career. Her works, which incorporate social, political, sexual, and religious themes, have generated both critical acclaim and controversy. Madonna is often cited as an influence by other artists.", video: "https://www.youtube.com/watch?v=xAxNaLAR2to")

#FANS
fan1 = Fan.create(name:"Ronak")
fan2 = Fan.create(name:"Daniel")
fan2 = Fan.create(name:"Noa")
fan2 = Fan.create(name:"Brad")

#FESTIVALS
festival1 = Festival.create(name: "Sasquatch", location: "Quincy, WA", organizer_id: 1, image_url: "https://upload.wikimedia.org/wikipedia/commons/4/48/Gorge_Amphitheatre.jpg", camping: true, start_date: DateTime.now, end_date: DateTime.now, description:"Sasquatch! Music Festival was an annual music festival held at The Gorge Amphitheatre in George, Washington. It took place on Memorial Day weekend, running for three to four days.")
festival2 = Festival.create(name: "Bonaroo", location: "Manchester, TN", organizer_id: 2, image_url: "https://upload.wikimedia.org/wikipedia/en/2/2d/BonnarooDay.JPG", camping: true, start_date: DateTime.now, end_date: DateTime.now, description:"The Bonnaroo Music and Arts Festival is an American annual four-day music festival developed and produced by Superfly Presents and AC Entertainment. ... The festival features craftsmen and artisans selling unique products, food and drink vendors, comedy acts, silent disco, cinema experiences, and a Ferris wheel.")
festival3 = Festival.create(name: "Shambhala", location: "Nelson, BC", organizer_id: 3, image_url: "https://i0.wp.com/thissongissick.com/wp-content/uploads/2019/09/AMP-Don-Idio.jpg?w=750&ssl=1", camping: true, start_date: DateTime.now, end_date: DateTime.now, description:"Shambhala Music Festival is an annual electronic music festival held during last week in July at the Salmo River Ranch, a 500-acre (2.0 km2) farm, in the West Kootenay mountains near Nelson, British Columbia, Canada. The festival lasts 4 days and 3 nights and offers a mix of music and art in nature.")
festival4 = Festival.create(name: "Coachella", location: "Indio, CA", organizer_id: 4, image_url: "https://9b16f79ca967fd0708d1-2713572fef44aa49ec323e813b06d2d9.ssl.cf2.rackcdn.com/1140x_a10-7_cTC/Music-Coachella-Stagecoach-1591853035.jpg", camping: true, start_date: DateTime.now, end_date: DateTime.now, description:"The Coachella Valley Music and Arts Festival (commonly called Coachella or the Coachella Festival) is an annual music and arts festival held at the Empire Polo Club in Indio, California, in the Coachella Valley in the Colorado Desert.")


favorite1 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: true, comment: "no comment")
favorite2 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: true)
favorite3 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: true, comment: "Whatever")
favorite4 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: true, comment: "Love it")
favorite5 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: false, comment: "Meh")
favorite6 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: false)
favorite7 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: true, comment: "Whatever")
favorite8 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: false)
favorite0 = Favorite.create(fan_id: Fan.all.sample.id, festival_id: Festival.all.sample.id, wishlist: false)


ar1 = ArtistFestival.create(artist_id: Artist.all.sample.id, festival_id: Festival.all.sample.id)
ar2 = ArtistFestival.create(artist_id: Artist.all.sample.id, festival_id: Festival.all.sample.id)
ar3 = ArtistFestival.create(artist_id: Artist.all.sample.id, festival_id: Festival.all.sample.id)
ar4 = ArtistFestival.create(artist_id: Artist.all.sample.id, festival_id: Festival.all.sample.id)
ar5 = ArtistFestival.create(artist_id: Artist.all.sample.id, festival_id: Festival.all.sample.id)
ar6 = ArtistFestival.create(artist_id: Artist.all.sample.id, festival_id: Festival.all.sample.id)
ar7 = ArtistFestival.create(artist_id: Artist.all.sample.id, festival_id: Festival.all.sample.id)


puts 'seeds seeded!'