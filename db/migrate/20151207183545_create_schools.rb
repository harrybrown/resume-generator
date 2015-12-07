class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :city
      t.string :state
      t.date :completion_date
      t.string :field_of_study

      t.timestamps null: false
    end
  end
end
