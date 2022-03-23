class Membership < ApplicationRecord
  belongs_to :client
  belongs_to :gym
  validate :not_existing_gym_client

  def not_existing_gym_client
    
    
  end

  # scope :existing_client, {Client.joins(:memberships)}

end
 