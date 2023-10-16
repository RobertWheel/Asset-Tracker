class RemoveWebsiteFromCategory < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :website, :text
  end
end
