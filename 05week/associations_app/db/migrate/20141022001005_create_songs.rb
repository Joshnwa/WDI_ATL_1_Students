class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :artist, index: true
      t.string :title
      t.integer :length

      t.timestamps
    end
  end
end
