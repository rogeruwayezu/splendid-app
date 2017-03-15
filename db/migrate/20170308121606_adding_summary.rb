class AddingSummary < ActiveRecord::Migration[5.0]
  def change
    add_column :scholarships, :summary, :text
  end
end
