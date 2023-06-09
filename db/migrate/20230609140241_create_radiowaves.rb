class CreateRadiowaves < ActiveRecord::Migration[7.0]
  def change
    create_table :radiowaves do |t|
      t.float :name

      t.timestamps
    end
  end
end
