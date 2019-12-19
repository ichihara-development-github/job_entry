class CorrectEntry < ActiveRecord::Migration[5.0]
  def change
    remove_column :entries, :job_id_id, :integer
    remove_column :entries, :user_id_id, :integer
    remove_column :likes, :job_id_id, :integer
    remove_column :likes, :user_id_id, :integer
    add_column :entries, :job_id, :integer
    add_column :entries, :user_id, :integer
    add_column :likes, :job_id, :integer
    add_column :likes, :user_id, :integer

  end
end
