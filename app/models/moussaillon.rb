class Moussaillon < ApplicationRecord
  attr_accessor :sign_up_code
  validates :sign_up_code, on: :create, presence: true, inclusion: { in: ["GossipTeam2018"] }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gossips
end
