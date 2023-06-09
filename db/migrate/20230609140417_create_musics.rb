class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :radios do |t|
      t.integer :radiowave_id
      t.integer :music_id
    end

    create_table :musics do |t|
      
      t.string :filename

      t.timestamps
    end
  end
end
