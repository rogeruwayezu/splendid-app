class AddingCompleted < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :completed, :boolean
  end
end
