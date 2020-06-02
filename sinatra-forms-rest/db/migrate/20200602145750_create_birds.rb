class CreateBirds < ActiveRecord::Migration[6.0]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :call
      t.string :flavor
    end
  end
end
