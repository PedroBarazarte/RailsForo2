class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, :id => false do |t|
      t.string :id
      t.string :email
      t.string :password
      t.string :reset_password
      t.string :ask_reset_password
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
