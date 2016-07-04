class RemoveNameFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :name
  end
end
