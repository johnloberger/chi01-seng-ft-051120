class CreateTweets < ActiveRecord::Migration[6.0]
  # def up
  #   create_table :tweets do |t|
  #     t.string :message
  #   end
  # end

  # def down
  #   drop_table :tweets
  # end

  def change
    create_table :tweets do |t|
      t.string :message
    end
  end
end
