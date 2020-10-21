# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CharacterActivity.delete_all
Event.delete_all
Activity.delete_all
Character.delete_all

c1 = Character.create(name: 'Charlie Brown', nickname: 'Chuck/Charles/Big Brother/Sack', personality: 'gentle, kind-hearted, pessimistic sometimes', hobbies: 'playing baseball with friends, hanging out with Snoopy', catchphrase: 'Good Grief', image: 'https://static.wikia.nocookie.net/peanuts/images/b/b6/Charlie_Brown_smiling.png/revision/latest/scale-to-width-down/185?cb=20170723213539')
c2 = Character.create(name: 'Sally Brown', personality: 'sweet, friendly, self-centered, optimistic', hobbies: 'being the center of attention, talking to the school building', image: 'https://static.wikia.nocookie.net/peanuts/images/b/b3/Peanuts_-_Sally_Brown_Nervous.png/revision/latest/scale-to-width-down/152?cb=20120827021029')
c3 = Character.create(name: 'Marcie', personality: 'unassuming sweetness, intelligent', hobbies: 'reading books, appreciating arts, doing homework', image: 'https://static.wikia.nocookie.net/peanuts/images/0/0b/Marcie_clipart.gif/revision/latest/scale-to-width-down/200?cb=20190131141521')
c4 = Character.create(name: 'Peppermint Patty', nickname: 'Sir', personality: 'loyal, courageous, vulnerable at times', hobbies: 'playing sports, skating', image: 'https://upload.wikimedia.org/wikipedia/en/a/a0/Peppermint_Patty.png')
c5 = Character.create(name: 'Schroeder', personality: 'always a musician', hobbies: 'playing his toy piano, loving Beethoven, playing hockey', image: 'https://static.wikia.nocookie.net/peanuts/images/e/ea/Piano.png/revision/latest/scale-to-width-down/310?cb=20190907012647')
c6 = Character.create(name: 'Snoopy', nickname: 'Joe Cool', personality: 'funny, imaginative, good-natured', hobbies: 'suppertime, fantasizing imaginative lives, writing', image: 'https://static.wikia.nocookie.net/peanuts/images/3/3e/Snoopytrans.png/revision/latest/scale-to-width-down/310?cb=20200323161900')
c7 = Character.create(name: 'Linus van Pelt', nickname: 'Linus', personality: 'eccentric, delightfully hopeful, intellegent', hobbies: 'sucking his thumbs, holding his security blanket', image: 'https://static.wikia.nocookie.net/peanuts/images/7/79/LinusBlanket.gif/revision/latest/scale-to-width-down/310?cb=20190808175420')
c8 = Character.create(name: 'Lucy van Pelt', nickname: 'Lucy/Lucille', personality: 'loud, stubborn, selfless, caring', hobbies: 'pulling the football away from Charlie Brown when he is about to kick it, her psychiatry stand', image: 'https://www.peanuts.com/sites/default/files/lu-color.jpg')
c9 = Character.create(name: 'Woodstock', personality: 'chill, adventurous', hobbies: 'hanging out with Snoopy, being Snoopy\'s helicopter pilot, eating worms', image: 'https://www.peanuts.com/sites/default/files/wo-color.jpg')

e1 = Event.create(name: 'Pumpkin Time!', description: 'We will go to Snoopy Best Pumpkin Patch and we will carve our Jack-O\'-Lantern together! (Lunch Included)', venue: 'Charlie Brown\'s Best Pumpkin Patch', location: '104 Charie Road', date: 'Oct 20, 2020 (Tue)', time: '11:00am - 3:00pm')
e2 = Event.create(name: 'Hike & Picnic', description: 'We will hike to Charles Schulz hill and have picnic on top of the hill to enjoy the breathtaking Peanutsland views. (Lunch not included)', venue: 'Charles Schulz Hill', location: 'On top of Charles Schulz Hill', date: 'Oct 24, 2020 (Sat)', time: '11:00am - 4:00pm')


a1 = Activity.create(name: 'Go On a Hike', description: 'During the fall season, it\'s nice to explore the woods with family and friends in this very chill weather.', event_id: e2.id)
a2 = Activity.create(name: 'Picnic', description: 'The fall weather is perfect, since it\'s not too hot and not too cold. Might as well enjoy lunch outdoor with family and friends. And don\'t forget to pack some autumn treats, like pumpkin pies and such!', event_id: e2.id)
a3 = Activity.create(name: 'Pumpkin Patch & Pumpkins', description: 'When is a better time to go pick pumpkins at pumpkin patches? Pick a pumpkin and go home and carve these pumpkins and bake pumpkin seeds with your family and friends!', event_id: e1.id)
a4 = Activity.create(name: 'Jack-O\'-Lanterns Time!!', description: 'After visiting the pumpkin patches, pick a pattern and start carving these beautiful pumpkins. Don\'t forget the candles!', event_id: e1.id)

ca1 = CharacterActivity.create(activity_id: a3.id, character_id: c1.id)
ca2 = CharacterActivity.create(activity_id: a3.id, character_id: c2.id)
ca3 = CharacterActivity.create(activity_id: a3.id, character_id: c3.id)
ca4 = CharacterActivity.create(activity_id: a4.id, character_id: c1.id)
ca5 = CharacterActivity.create(activity_id: a4.id, character_id: c2.id)
ca6 = CharacterActivity.create(activity_id: a1.id, character_id: c4.id)
ca7 = CharacterActivity.create(activity_id: a1.id, character_id: c5.id)
ca8 = CharacterActivity.create(activity_id: a1.id, character_id: c6.id)
ca9 = CharacterActivity.create(activity_id: a2.id, character_id: c4.id)
ca10 = CharacterActivity.create(activity_id: a2.id, character_id: c5.id)
ca11 = CharacterActivity.create(activity_id: a2.id, character_id: c6.id)

