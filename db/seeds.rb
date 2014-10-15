Movie.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-Fiction')
drama = Genre.create!(name: 'Drama')

Movie.create!([{
    title: "The Shawshank Redemption",
    description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
    finished_on: 10.days.ago,
    rating: 4,
    tmdbid: 278,
    genres: [non_fiction, drama]
  },
  {
    title: "The Godfather",
    description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
    finished_on: 3.day.ago,
    rating: 3,
    tmdbid: 238,
    genres: [non_fiction]
  },
  {
    title: "The Dark Knight",
    description: "When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level.",
    finished_on: nil,
    rating: 1,
    tmdbid: 155,
    genres: [fiction]
  }])

p "Created #{Movie.count} movies."
