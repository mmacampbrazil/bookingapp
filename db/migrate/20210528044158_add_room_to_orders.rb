class AddRoomToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :room, index: true
  end
end
