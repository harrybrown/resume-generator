class CreateJobDuties < ActiveRecord::Migration
  def change
    create_table :job_duties do |t|
      t.timestamps
    end
    add_column :job_duties, :description, :string
  end
end
