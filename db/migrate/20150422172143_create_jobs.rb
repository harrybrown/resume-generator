class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.timestamps
    end
    add_column :jobs, :start_date, :date
    add_column :jobs, :end_date, :date
    add_column :jobs, :company, :string
    add_column :jobs, :type_of_company, :string
    add_column :jobs, :position_title, :string
  end
end
