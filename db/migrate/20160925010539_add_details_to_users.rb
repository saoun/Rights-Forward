class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :image, :string
    add_column :users, :fullname, :string
    add_column :users, :contact, :string
    add_column :users, :bio, :string
    add_column :users, :affiliation, :string
    add_column :users, :trainings, :string
    add_column :users, :skills, :string
    add_column :users, :languages, :string
    add_column :users, :expertise, :string
  end
end
