class CreateNests < ActiveRecord::Migration[6.0]
  def change
    create_table :nests do |t|
      t.string :tree_name
      t.integer :elevation
      t.timestamps
    end
  end
end
