class CreateScholarships < ActiveRecord::Migration[5.0]
  def change
    create_table :scholarships do |t|
      t.string :title
      t.string :description
      t.integer :organization_id

      t.timestamps
    end
  end
end
