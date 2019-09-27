class AddPowerToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :power, :string
  end
end
