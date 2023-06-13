class CreateTvchannels < ActiveRecord::Migration[7.0]
  def change
    create_table :tvchannels do |t|
      t.string :name

      t.timestamps
    end
  end
end
