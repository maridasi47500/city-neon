class CreateCreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :create_places do |t|
      t.integer :user_id
      t.string :name
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
