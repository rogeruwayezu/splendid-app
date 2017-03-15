class RemovingQuestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :applications, :questions, :string
  end
end
