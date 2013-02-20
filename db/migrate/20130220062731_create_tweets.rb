class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :created_stamp
      t.string :twitter_id
      t.string :text
      t.string :user_id
      t.string :user_name
      t.string :user_screen_name
      t.string :user_location

      t.timestamps
    end
  end
end
