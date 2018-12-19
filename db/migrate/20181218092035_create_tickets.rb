class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :trip, foreign_key: true
      t.integer :customer_id
      t.boolean :status
      t.string :bus_stop
      t.integer :seat_id

      t.timestamps
    end
  end
end
