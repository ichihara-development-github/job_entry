class RemoveType < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :type, :string
    add_column :jobs, :kind, :string
  end
end
