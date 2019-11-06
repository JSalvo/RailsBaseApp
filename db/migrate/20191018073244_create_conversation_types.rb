class CreateConversationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :conversation_types do |t|
      t.string :name

      t.timestamps
    end

    ConversationType.create(name: "Chat")
    ConversationType.create(name: "Ticket")
  end
end
