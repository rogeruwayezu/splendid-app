class RenamingUserId < ActiveRecord::Migration[5.0]
  def change
     rename_column :answers, :user_id, :application_id
  end
end
