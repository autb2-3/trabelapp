class CreateReserves < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_people
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
