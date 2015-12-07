class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :school
      t.datetime :end_date
      t.string :course_of_study
      t.string :level_of_completion

      t.timestamps null: false
    end
  end
end
