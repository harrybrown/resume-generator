class CreateServiceSkills < ActiveRecord::Migration
  def change
    create_table :service_skills do |t|
      t.timestamps
    end
    add_column :service_skills, :name, :string
    add_column :service_skills, :description, :string
  end
end
