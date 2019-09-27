class DropNodesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :nodes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
