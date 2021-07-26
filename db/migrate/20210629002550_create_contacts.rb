class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string  :clinic_name  ,null: false
      t.string  :name         ,null: false
      t.string  :kana_name
      t.string  :email        ,null: false
      t.string  :phone_number ,null: false
      t.string  :address
      t.text    :message      ,null: false
      t.integer :inquiry_id   ,null:false
      t.timestamps
    end
  end
end
