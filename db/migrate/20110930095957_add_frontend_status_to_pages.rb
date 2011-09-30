class AddFrontendStatusToPages < ActiveRecord::Migration
  def change
    add_column :pages, :frontend_status, :string
  end
end
