class AddColumnMachines < ActiveRecord::Migration[5.2]
  def change
  	add_column :machines, :gym_id, :integer
  end
end
