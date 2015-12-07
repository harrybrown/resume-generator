class AddDisplayOrderToServiceSkills < ActiveRecord::Migration
  def change
    add_column :service_skills, :display_order, :integer, :limit => 8
  end
end
