class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.datetime :datetime_conversation
      t.string :title
      t.string :datetime_closing_conversation
      t.references :conversation_type, foreign_key: true

      t.timestamps
    end
  end
end
