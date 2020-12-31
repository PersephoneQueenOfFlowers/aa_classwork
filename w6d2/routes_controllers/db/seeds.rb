# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def rand_id
  rand(1..100_000)
end

ActiveRecord::Base.transaction do
  Artwork.delete_all
  ArtworkShare.delete_all
  User.delete_all
  
  randy = User.create(
    id: rand_id,
    username: "randy"
  )

  donald = User.create(
    id: rand_id,
    username: "donald"
  )

  jim = User.create(
    id: rand_id,
    username: "jim"
  )

  jeff = User.create(
    id: rand_id,
    username: "jefe"
  )

  the_scream = Artwork.create(
    id: rand_id,
    title: "The Scream",
    image_url: "https://i.etsystatic.com/11055184/r/il/8c0c8e/2246788349/il_1588xN.2246788349_7ckl.jpg",
    artist_id: rand_id
  )

  mona_lisa = Artwork.create(
    id: rand_id,
    title: "Mona Lisa",
    image_url: "https://i.etsystatic.com/11055184/r/il/81aae1/2147762156/il_1588xN.2147762156_d2wt.jpg",
    artist_id: rand_id
  )

  rite_of_spring = Artwork.create(
    id: rand_id,
    title: "Rite of Spring",
    image_url: "https://i.etsystatic.com/11055184/r/il/8c0c8e/2246788349/il_1588xN.2246788349_7ckl.jpg",
    artist_id: rand_id
  )

  the_scream = Artwork.create(
    id: rand_id,
    title: "The Scream",
    image_url: "https://i.etsystatic.com/11055184/r/il/eab649/2051882189/il_1588xN.2051882189_dxfp.jpg",
    artist_id: rand_id
  )

  jeff_viewing = ArtworkShare.create(
    viewer_id: User.select(:id).where(username: "jefe"),
    artwork_id: Artwork.select(:id).where(title: "The Scream")
  )


end

