class Movie < ActiveRecord::Base
  def finished?
    finished_on.present?
  end
end
