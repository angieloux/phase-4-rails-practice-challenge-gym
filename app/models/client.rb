class Client < ApplicationRecord
    has_many :gyms, through: :memberships
    has_many :memberships, dependent: :destroy
    accepts_nested_attributes_for :memberships

    validates :name, presence: true
    validates :age, presence: true, numericality: {only_integer: true}

    scope :client_memberships, -> {Client.joins(:memberships)}

end
