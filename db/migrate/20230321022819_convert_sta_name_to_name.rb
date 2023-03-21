class ConvertStaNameToName < ActiveRecord::Migration[7.0]
  def change
     remove_column :stations, :sta_name, :string
    add_column :stations, :name, :string
  end
end
