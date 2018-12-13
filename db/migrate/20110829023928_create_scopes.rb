class CreateScopes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :scopes do |t|
      t.string :name
      t.timestamps
    end
    add_index :scopes, :name, unique: true
  end

  def self.down
    drop_table :scopes
  end
end
