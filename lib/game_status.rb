require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.find do |win_combination|
  #binding.pry
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
  end
end

def full?(board)
  !board.any? { |space| space == " " || space == "" || space == nil}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  over?(board)
  won?(board)
    WIN_COMBINATIONS.all? |combos|
    if combos != "O" || combos != nil }
      "X"
    elsif combos == "O"
      "O"
    else
    end
end
