class AddServiceIDtoServiceSkills < ActiveRecord::Migration
  def change
    add_column :service_skills, :service_id, :integer, :limit => 8


  end
end
