class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :target_job
      t.string :objective

      t.timestamps null: false
    end
  end
end
