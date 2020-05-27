class CreateFindings < ActiveRecord::Migration[5.2]
  def change
    create_table :findings do |t|
      t.integer :user_id
      t.integer :mushroom_id
      t.string :notes

      t.timestamps
    end
  end
end
