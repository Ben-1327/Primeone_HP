class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|

      t.string "name", null: false
      t.string "ruby", null: false
      t.string "company_name"
      t.string "email", null: false
      t.string "tel"
      t.text "contents", null: false

      t.timestamps
    end
  end
end
