class CreatePubCats < ActiveRecord::Migration[6.0]
  def change
    create_table :pub_cats do |t|
      t.references :id_publications, null: false, foreign_key: true
      t.references :id_categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
