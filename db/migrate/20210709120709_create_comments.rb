class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :text
      t.text :user_name
      t.timestamps
    end
  end
end
