class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|

      t.string "user_name"
      t.string "ruby"
      t.string "company_name"
      t.string "email"
      t.string "tel"
      t.text "contents"

      t.timestamps
    end
  end
end
