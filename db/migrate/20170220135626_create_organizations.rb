class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :title
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
