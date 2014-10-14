class RemoveGenreFromMovie < ActiveRecord::Migration
  def change
    remove_index :movies, [:genre_id]
    remove_column :movies, :genre_id
  end
end
