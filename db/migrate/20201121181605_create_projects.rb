class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :title
      t.text :description
      t.string :url
      t.string :img_path 

      t.timestamps
    end
  end
end
