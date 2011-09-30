class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.references :site

      t.timestamps
    end

    add_index :sections, :site_id
  end
end
