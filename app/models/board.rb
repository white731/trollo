class Board < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :destroy

def self.show_lists_for_selected_board(user_id, board_id)
  self.find_by_sql("select b.title as Board_title, b.id as board_id, l.title as List_title, l.id as list_id from users u
  join boards b on b.user_id = u.id
  join lists l on l.board_id = b.id
  Where u.id = #{user_id} and b.id=#{board_id}")
end

def self.all_boards(user_id)
  self.find_by_sql("select b.title as title, b.id as id from users u
  join boards b on b.user_id = u.id
  Where u.id = #{user_id}")
end

end
