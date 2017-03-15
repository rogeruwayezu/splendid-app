class DeletingDescription < ActiveRecord::Migration[5.0]
  def change
    remove_column :scholarships, :description, :string
  end
end
