class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :job_id, foreign_key: true
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
