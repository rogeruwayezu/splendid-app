class DropModel < ActiveRecord::Migration[5.0]
  def up
    drop_table :applications
  end

 def down
    raise ActiveRecord::IrreversibleMigration
  end
end
