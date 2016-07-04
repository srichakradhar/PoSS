class RemoveCategoryIdFromMessage < ActiveRecord::Migration
  def change
    remove_column :messages, :category_id
  end
end
