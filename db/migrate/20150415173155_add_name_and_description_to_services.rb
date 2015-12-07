class AddNameAndDescriptionToServices < ActiveRecord::Migration
  def change
    add_column :services, :name, :string
    add_column :services, :description, :string
  end
end
