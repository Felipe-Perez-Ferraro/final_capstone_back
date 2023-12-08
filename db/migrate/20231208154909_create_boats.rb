class CreateBoats < ActiveRecord::Migration[7.1]
  def change
    create_table :boats do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.decimal :price, null: false
      t.string :color, null: false
      t.decimal :rent_price, null: false
      t.boolean :reserved, null: false, default: false
      t.references :user, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
