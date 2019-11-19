class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications, :id => false do |t|
      t.integer :id
      t.string :title
      t.boolean :status
      t.text :articule
      t.references :id_users, null: false, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
