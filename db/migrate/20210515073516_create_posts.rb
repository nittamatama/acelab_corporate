class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :title       , null: false
      t.references :admin       , foreign_key: true, dependent: :destroy
      t.integer    :category_id , null: false
      t.timestamps
    end
  end
end
