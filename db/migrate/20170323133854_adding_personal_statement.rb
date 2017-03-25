class AddingPersonalStatement < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :personal_statement, :string
  end
end
