class CreateContacts < ActiveRecord::Migration[7.2]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :name
      t.integer :number
      t.string :status
      t.string :user_email
      t.date :date

      t.timestamps
    end
  end
end
