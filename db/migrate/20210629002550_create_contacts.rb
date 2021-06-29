class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :clinic_name
      t.string :name
      t.string :kana_name
      t.string :email
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
