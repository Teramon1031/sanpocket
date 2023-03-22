class RmXYFromMapsAndAddXYToStation < ActiveRecord::Migration[7.0]
  def change
    add_column :stations, :x, :float
    add_column :stations, :y, :float
    remove_column :maps, :x, :float
    remove_column :maps, :y, :float
  end
end
