class AddMySkillLevelToServiceSkills < ActiveRecord::Migration
  def change
    add_column :service_skills, :my_skill_level, :integer, :limit => 8
  end
end
