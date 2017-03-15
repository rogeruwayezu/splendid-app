class AddingQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :questions, :string, array: true, default: '{}'
  end
end
