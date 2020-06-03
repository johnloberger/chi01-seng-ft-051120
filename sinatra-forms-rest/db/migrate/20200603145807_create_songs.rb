class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :bird_id
      t.string :title

      t.timestamps
    end
  end
end
