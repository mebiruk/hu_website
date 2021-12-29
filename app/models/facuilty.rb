class Facuilty < ApplicationRecord
    validates :name, :presence => true
    has_many :programs
end
