class CreateAuthorizationScopes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :authorization_scopes do |t|
      t.belongs_to :authorization, :scope
      t.timestamps
    end
  end

  def self.down
    drop_table :authorization_scopes
  end
end
