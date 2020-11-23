class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.text :name
      t.text :title
      t.text :description
      t.text :url
      t.text :img_path 

      t.timestamps
    end
  end
end
