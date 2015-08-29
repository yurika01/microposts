class AddLocationToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :location, :integer
  end
end
