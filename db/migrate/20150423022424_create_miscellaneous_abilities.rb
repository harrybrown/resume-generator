class CreateMiscellaneousAbilities < ActiveRecord::Migration
  def change
    create_table :miscellaneous_abilities do |t|
      t.timestamps
    end
    add_column :miscellaneous_abilities, :description, :string
  end
end
