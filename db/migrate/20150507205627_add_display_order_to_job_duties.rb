class AddDisplayOrderToJobDuties < ActiveRecord::Migration
  def change
    add_column :job_duties, :display_order, :integer, :limit => 8
  end
end
