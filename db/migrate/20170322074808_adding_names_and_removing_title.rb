class AddingNamesAndRemovingTitle < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :last_name, :string
    rename_column :applications, :title, :first_name
  end
end
