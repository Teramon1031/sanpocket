class ConvertStaIdToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :stations, :sta_id, :string
    add_column :stations, :sta_id, :integer
  end
end
