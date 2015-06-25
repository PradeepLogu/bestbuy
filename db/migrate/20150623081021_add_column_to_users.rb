class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :postal_code, :integer
    add_column :users, :type_of_address, :boolean
    add_column :users, :billing_add_confm, :boolean
    add_column :users, :is_visitor, :boolean
  end
end
