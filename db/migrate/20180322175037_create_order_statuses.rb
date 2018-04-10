class CreateOrderStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :order_status do |t|
      t.string :name

      t.timestamps
    end
  end
end
