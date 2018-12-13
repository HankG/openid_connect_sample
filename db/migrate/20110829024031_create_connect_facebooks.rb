class CreateConnectFacebooks < ActiveRecord::Migration[5.1]
  def self.up
    create_table :connect_facebook do |t|
      t.belongs_to :account
      t.string :identifier, :access_token
      t.timestamps
    end
  end

  def self.down
    drop_table :connect_facebooks
  end
end
