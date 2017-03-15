class AddingOtherColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :scholarships, :covered_expenses, :text
    add_column :scholarships, :elegibility, :text
    add_column :scholarships, :how_to_apply, :text
    add_column :scholarships, :deadline, :text
  end
end
