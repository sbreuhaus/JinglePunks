class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song
      t.text :tags

      t.timestamps null: false
    end
  end
end
