class CreateAuthorizationRequestObjects < ActiveRecord::Migration[5.1]
  def change
    create_table :authorization_request_objects do |t|
      t.belongs_to :authorization, :request_object
      t.timestamps
    end
  end
end
