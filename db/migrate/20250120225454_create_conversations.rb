class CreateConversations < ActiveRecord::Migration[7.2]
  def change
    create_table :conversations do |t|
      t.text :detail
      t.references :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
