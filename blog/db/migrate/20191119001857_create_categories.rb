class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories, :id => false do |t|
      t.integer :id
      t.string :title
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
