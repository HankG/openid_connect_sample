class CreateRequestObjects < ActiveRecord::Migration[5.1]
  def change
    create_table :request_objects do |t|
      t.text :jwt_string
      t.timestamps
    end
  end
end
