class AddXYToStation < ActiveRecord::Migration[7.0]
  def change
    add_column :maps, :x, :float
    add_column :maps, :y, :float
  end
end
