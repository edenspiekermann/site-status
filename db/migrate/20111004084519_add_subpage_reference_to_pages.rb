class AddSubpageReferenceToPages < ActiveRecord::Migration
  def change
    add_column :pages, :parent_id, :integer, :references => :pages
  end
end
