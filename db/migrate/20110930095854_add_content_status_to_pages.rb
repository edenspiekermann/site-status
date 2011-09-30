class AddContentStatusToPages < ActiveRecord::Migration
  def change
    add_column :pages, :content_status, :string
  end
end
