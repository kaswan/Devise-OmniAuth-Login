class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, :after => :email
    add_column :users, :gender, :string, :after => :name
    add_column :users, :image_url, :string, :after => :gender
    add_column :users, :location, :string, :after => :image_url
    add_column :users, :url, :string, :after => :location
    add_column :users, :uid, :string, :after => :url
    add_column :users, :provider, :string, :after => :uid
  end
end
