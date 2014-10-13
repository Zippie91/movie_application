Movie.destroy_all

Movie.create([{
    title: "The Shawshank Redemption",
    description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
    finished_on: 10.days.ago,
    rating: 4
  },
  {
    title: "The Godfather",
    description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
    finished_on: 3.day.ago,
    rating: 3
  },
  {
    title: "The Dark Knight",
    description: "When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level.",
    finished_on: nil,
    rating: 1
  }])

p "Created #{Movie.count} movies."
