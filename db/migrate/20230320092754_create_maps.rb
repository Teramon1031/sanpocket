class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.integer :user_id, null:false
      t.string :station1, null:false
      t.string :station2, null:false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
