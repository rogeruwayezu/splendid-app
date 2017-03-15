class ChangingQuestions < ActiveRecord::Migration[5.0]
  def up
    change_column :applications, :questions, :string
  end
  def down
    change_column :applications, :questions, :array, :default => []
  end
end
