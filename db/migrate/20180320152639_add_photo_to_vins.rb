class AddPhotoToVins < ActiveRecord::Migration[5.1]
  def change
    add_column :vins, :photo, :string
  end
end
