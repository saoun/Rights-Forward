class RemoveChecks < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :skills, :string
    remove_column :users, :languages, :string
    remove_column :users, :expertise, :string
  end
end
