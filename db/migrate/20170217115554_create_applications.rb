class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :institution_id

      t.timestamps
    end
  end
end
