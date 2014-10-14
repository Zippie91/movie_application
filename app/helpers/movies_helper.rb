module MoviesHelper
  def image_from_tmdb(tmdbid)
    movie = Tmdb::Movie.detail(tmdbid)

    image_tag("#{@configuration.base_url}w154#{movie['poster_path']}")
  end
end
