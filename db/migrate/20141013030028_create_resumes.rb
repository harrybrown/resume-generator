class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :job_type
      t.string :objective
      t.integer :user_id

      t.timestamps
    end
  end
end
