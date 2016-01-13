class CreateFullResumes < ActiveRecord::Migration
  def change
    create_table :full_resumes do |t|

      t.timestamps null: false
    end
  end
end
