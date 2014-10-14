class Movie < ActiveRecord::Base
  belongs_to :genre

  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 1.week.ago) }
  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }

  before_save :set_keywords

  def finished?
    finished_on.present?
  end

  protected
    def set_keywords
      self.keywords = [title, description].map(&:downcase).join(' ')
    end
end
