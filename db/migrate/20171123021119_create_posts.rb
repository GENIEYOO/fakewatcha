class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.text :t
      t.string :photo
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
