# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

`rake db:reset`
# rake db:schema:load 
`rake db:seed`

User.create!(username: "Van Gogh")
User.create!(username: "Raphael")
User.create!(username: "Leonardo")
User.create!(username: "Donatello")
User.create!(username: "Michaelangelo")

Artwork.create!(title: "Starry Night", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1200px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg", artist_id: User.find_by(username: "Van Gogh").id)
Artwork.create!(title: "Ralphie", image_url: "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters_opt/p-teenage-mutant-ninja-turtles-josh-pais.jpg", artist_id: User.find_by(username: "Raphael").id)
Artwork.create!(title: "Leo", image_url: "https://cdn.britannica.com/06/200006-131-ABB681CF/Leonardo-da-Vinci-Italian-Renaissance-Florence-Engraving-1500.jpg", artist_id: User.find_by(username: "Leonardo").id)
Artwork.create!(title: "Donny", image_url: "https://static.wikia.nocookie.net/tmnt2012series/images/d/d6/Donnyboy.png/revision/latest/scale-to-width-down/340?cb=20170428224932", artist_id: User.find_by(username: "Donatello").id)
Artwork.create!(title: "Mike", image_url: "https://vignette.wikia.nocookie.net/paramount-teenage-mutant-ninja-turtles/images/7/7b/Teenage_Mutant_-Ninja_Turtles_Out_of_the_Shadows_Screencaps-13.png/revision/latest?cb=20170612034630", artist_id: User.find_by(username: "Michaelangelo").id)

