class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :company
      t.string :city
      t.string :state
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
