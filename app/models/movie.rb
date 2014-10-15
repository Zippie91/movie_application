class Movie < ActiveRecord::Base
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 1.week.ago) }
  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
  scope :filter, ->(genre_name){ joins(:genres).where('genres.name = ?', genre_name) if genre_name.present? }

  before_save :set_keywords

  def finished?
    finished_on.present?
  end

  protected
    def set_keywords
      self.keywords = [title, description].map(&:downcase).join(' ')
    end
end
