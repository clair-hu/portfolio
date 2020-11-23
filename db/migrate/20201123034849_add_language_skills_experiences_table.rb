class AddLanguageSkillsExperiencesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :language_progresses do |t|
      t.text :language
      t.integer :progress

      t.timestamps
    end
    
    create_table :skills do |t|
      t.text :img_path
      t.text :category
      t.text :framework 

      t.timestamps
    end
    
    create_table :experiences do |t|
      t.text :img_path
      t.text :company
      t.text :location
      t.text :job_title

      t.timestamps
    end
  end
end
