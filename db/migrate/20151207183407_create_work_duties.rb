class CreateWorkDuties < ActiveRecord::Migration
  def change
    create_table :work_duties do |t|
      t.integer :work_id
      t.string :task
      t.string :description

      t.timestamps null: false
    end
  end
end
