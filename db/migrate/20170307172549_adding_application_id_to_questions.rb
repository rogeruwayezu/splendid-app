class AddingApplicationIdToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :application_id, :integer
  end
end
