# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    validates :id, :name, presence: true
    validates :name, length: { maximum: 255 }
    validates :name, uniqueness: { message: "'%{value}' is already in use"}

    has_many :poke_moves

    has_many :pokemons,
    through: :poke_moves
end
