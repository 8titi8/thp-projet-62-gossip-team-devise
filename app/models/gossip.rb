class Gossip < ApplicationRecord
  validates :content, presence: true
  belongs_to :moussaillon
end
