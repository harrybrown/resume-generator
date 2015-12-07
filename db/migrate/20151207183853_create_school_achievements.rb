class CreateSchoolAchievements < ActiveRecord::Migration
  def change
    create_table :school_achievements do |t|
      t.integer :school_id
      t.string :achievement
      t.string :description

      t.timestamps null: false
    end
  end
end
