class AddPicturetoBoats < ActiveRecord::Migration[7.1]
  def change
    add_column :boats, :picture, :string
  end
end
