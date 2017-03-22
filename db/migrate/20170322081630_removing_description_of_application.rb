class RemovingDescriptionOfApplication < ActiveRecord::Migration[5.0]
  def change
    remove_column :applications, :description, :string
  end
end
