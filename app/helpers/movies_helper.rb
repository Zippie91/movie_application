module MoviesHelper
  def image_from_tmdb(tmdbid)
    image_tag "http://api.themoviedb.org/3/movie/#{tmdbid}/images"
  end
end
