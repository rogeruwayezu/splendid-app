class AddingColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :scholarships, :course_level, :text
    add_column :scholarships, :study_subjects, :text
    add_column :scholarships, :number_of_awards, :text
  end
end
