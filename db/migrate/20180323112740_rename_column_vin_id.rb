class RenameColumnVinId < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :vins_id, :vin_id
  end
end
