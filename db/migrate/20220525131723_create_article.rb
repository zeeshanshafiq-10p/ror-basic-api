class CreateArticle < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.text :description
      t.boolean :deleted, default: false

      t.timestamps
    end
  end
end
