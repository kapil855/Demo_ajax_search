class RemoveTitleFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :title, :string
  end
end
