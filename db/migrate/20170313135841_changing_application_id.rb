class ChangingApplicationId < ActiveRecord::Migration[5.0]
  def change
     rename_column :questions, :application_id, :scholarship_id
  end
end
