class AddProfileToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :profile, :integer
  end
end
