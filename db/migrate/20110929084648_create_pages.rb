class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :path
      t.references :section

      t.timestamps
    end
    
    add_index :pages, :section_id
  end
end
