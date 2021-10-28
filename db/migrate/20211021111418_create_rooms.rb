class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :room_info
      t.integer :room_price
      t.string :room_place
      t.binary :room_image
      t.integer :user_id

      t.timestamps
    end
  end
end
