class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :channelshavevideos do |t|
      t.integer :tvchannel_id
      t.integer :video_id
    end
    create_table :videos do |t|
      t.string :filename
      t.integer :user_id

      t.timestamps
    end
  end
end
