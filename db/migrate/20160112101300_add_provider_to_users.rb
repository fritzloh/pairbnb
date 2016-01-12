class AddProviderToUsers < ActiveRecord::Migration
 def self.up
   add_column :users, :provider, :string
 end
end