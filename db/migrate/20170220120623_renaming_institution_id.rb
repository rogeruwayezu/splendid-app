class RenamingInstitutionId < ActiveRecord::Migration[5.0]
  def change
    rename_column :applications, :institution_id, :organization_id
  end
end
