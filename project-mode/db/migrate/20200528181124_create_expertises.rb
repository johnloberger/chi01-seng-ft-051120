class CreateExpertises < ActiveRecord::Migration[5.2]
  def change
    create_table :expertises do |t|
      t.integer :user_id
      t.integer :mushroom_id

      t.timestamps
    end
  end
end
