class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.string :cover
      t.belongs_to :playlist, null: false , foreign_key: true

      t.timestamps
    end
  end
end
