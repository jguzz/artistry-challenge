class AddIdColumnsToPlays < ActiveRecord::Migration[5.2]
  def change
    add_column :plays, :artist_id, :integer
    add_column :plays, :instrument_id, :integer
  end
end
