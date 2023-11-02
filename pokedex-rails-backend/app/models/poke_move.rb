# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  move_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord 
    validates :id, :pokemon_id, :move_id, presence: true 
    validates :pokemon_id, uniqueness: { scope: :move_id, message: "Pokemon can not have the same move more than once" }
end
