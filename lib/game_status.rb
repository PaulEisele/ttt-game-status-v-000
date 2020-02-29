# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]




def won? (board)
  WIN_COMBINATIONS.detect do |win_combination|

<<<<<<< HEAD
=======
#for each win_combination in WIN_COMBINATIONS
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
>>>>>>> 7eaa8c19a11c48845d729869b465724946e0954e
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  else
    false
    end
  end
end

def full?(board)
<<<<<<< HEAD
  if board.detect {|i| i == " " || i == nil}
    return false
  else
    return true
  end
end

def draw? (board)
=======
  full_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
full?(full_board) #=> true

incomplete_board = ["X", " ", "X", "O", " ", "X", "O", " ", "O"]
full?(incomplete_board) #=> false
end

def draw?
>>>>>>> 7eaa8c19a11c48845d729869b465724946e0954e
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

<<<<<<< HEAD
def over? (board)
  if won?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if win_combination = won?(board)
    board[win_combination.first]
  end
=======
def over?
  draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
over?(draw_board) #=> true

won_board = ["X", "O", "X", "O", "X", "X", "O", "O", "X"]
over?(won_board) #=> true

inprogress_board = ["X", " ", "X", " ", "X", " ", "O", "O", " "]
over?(inprogress_board) #=> false
end

def winner?
  x_win_diagonal = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
  winner(x_win_diagonal) #=> "X"

  o_win_center_column = ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
  winner(o_win_center_column) #=> "O"

  no_winner_board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
  winner(no_winner_board) #=> nil
>>>>>>> 7eaa8c19a11c48845d729869b465724946e0954e
end
