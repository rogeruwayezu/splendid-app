class AddingFullDescription < ActiveRecord::Migration[5.0]
  def change
    add_column :scholarships, :full_description, :text
  end
end
