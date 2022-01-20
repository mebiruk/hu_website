class Facuilty < ApplicationRecord
    validates :name, :presence => true
    has_many :programs

    extend FriendlyId
    friendly_id :name
end
