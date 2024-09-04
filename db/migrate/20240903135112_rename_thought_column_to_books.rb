class RenameThoughtColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :thought, :body
  end
end
