class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :body
      t.boolean :show_homepage
      t.attachment :image

      t.timestamps
    end
  end
end
