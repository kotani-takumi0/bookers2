class RenameNameColumnUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :name, :name
  end
end
