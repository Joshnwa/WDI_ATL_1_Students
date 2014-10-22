class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.belongs_to :song, index: true
      t.string :name

      t.timestamps
    end
  end
end
