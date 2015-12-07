class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :video_embed_code
      t.string :topic
      t.string :category
      t.string :description
      t.date :publish_date

      t.timestamps null: false
    end
  end
end
