class RmStationsAddSDis < ActiveRecord::Migration[7.0]
  def change
    add_column :maps, :s_dis, :integer
    remove_column :maps, :station1, :string
    remove_column :maps, :station2, :string
  end
end
