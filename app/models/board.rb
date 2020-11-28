class Board < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :destroy

def self.show_lists_for_selected_board(user_id, board_id)
  self.find_by_sql
end

end
