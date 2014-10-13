class AddFinishedOnToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :finished_on, :date
  end
end
