class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :site_link
      t.text :my_contribution
      t.string :boxed_logo
      t.string :company_working_for
      t.text :project_description
      t.text :challenges
      t.string :screenshot
      t.string :mobile_screen_shot

      t.timestamps null: false
    end
  end
end
