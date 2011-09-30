class AddBackendStatusToPages < ActiveRecord::Migration
  def change
    add_column :pages, :backend_status, :string
  end
end
