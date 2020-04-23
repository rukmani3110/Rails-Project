class AddCategoryCategoryIdToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :category_categoryId, :integer
  end
end
