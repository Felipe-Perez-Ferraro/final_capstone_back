class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :username, null: false
      t.string :city, null: false
      t.string :date, null: false
      t.references :boat, foreign_key: { to_table: :boats }

      t.timestamps
    end
  end
end
