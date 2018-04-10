class AddDescriptionToVins < ActiveRecord::Migration[5.1]
  def change
    add_column :vins, :description, :string
  end
end
