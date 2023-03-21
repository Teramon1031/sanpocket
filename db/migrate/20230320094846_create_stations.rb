class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :sta_id
      t.string :sta_name

      t.timestamps
    end
  end
end
