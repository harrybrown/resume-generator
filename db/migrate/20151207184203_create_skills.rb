class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.string :description
      t.integer :resume_id
      t.integer :rating

      t.timestamps null: false
    end
  end
end
