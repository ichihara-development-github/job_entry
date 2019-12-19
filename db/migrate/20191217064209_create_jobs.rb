class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :venue
      t.string :area
      t.date :date
      t.string :start
      t.integer :reward
      t.string :type
      t.string :clothes
      t.string :content

      t.timestamps
    end
  end
end
