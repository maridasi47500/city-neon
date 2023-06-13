class AddUserIdToMusics < ActiveRecord::Migration[7.0]
  def change
    add_column :musics, :user_id, :integer
  end
end
