class Movie < ActiveRecord::Base
  def self.search(keyword)
    if keyword.present?
      where(title: keyword)
    else
      all
    end
  end

  def finished?
    finished_on.present?
  end
end
