class ConversationType < ApplicationRecord
  has_many :conversations
  has_many :messages
  

end
