# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |x|
  user = User.create(name: Faker::FunnyName.name)
  Picture.create(main_image: Faker::LoremFlickr.image)
  Post.create(content: Faker::Lorem.paragraph(2))
  Team.create(team_name: Faker::Team.creature)
end
