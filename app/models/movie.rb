class Movie < ActiveRecord::Base
  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 1.week.ago) }

  def finished?
    finished_on.present?
  end
end
