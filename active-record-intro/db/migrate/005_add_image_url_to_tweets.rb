class AddImageUrlToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :image_url, :string 
  end
end