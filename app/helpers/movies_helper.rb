module MoviesHelper
  def image_from_tmdb(tmdbid)
    movie = Tmdb::Find(tmdbid)

    image_tag("#{@configuration.base_url}w154#{movie.poster_path}")
  end
end
