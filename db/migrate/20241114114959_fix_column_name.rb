class FixColumnName < ActiveRecord::Migration[7.1]
  def change
      rename_column :movies, :poste_url, :poster_url
  end
end
