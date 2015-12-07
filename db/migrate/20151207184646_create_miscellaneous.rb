class CreateMiscellaneous < ActiveRecord::Migration
  def change
    create_table :miscellaneous do |t|
      t.string :name
      t.string :description
      t.integer :resume_id

      t.timestamps null: false
    end
  end
end
