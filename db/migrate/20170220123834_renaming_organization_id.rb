class RenamingOrganizationId < ActiveRecord::Migration[5.0]
  def change
    rename_column :applications, :organization_id, :scholarship_id
  end
end
