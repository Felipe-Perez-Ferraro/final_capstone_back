class RemoveReservedFromBoats < ActiveRecord::Migration[7.1]
  def change
    remove_column :boats, :reserved, :boolean
  end
end
