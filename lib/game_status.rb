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
  
  def won?(board)
    win_combos = []
    for each win_combos in WIN_COMBINATIONS
      win_index1 = win_combos[0]
      win_index2 = win_combos[1]
      win_index3 = win_combos[2]
      
      pos_1 = board[win_index1]
      pos_2 = board[win_index2]
      pos_3 = board[win_index3]
      
      if pos_1 == 'X' && pos_2 == 'X' && pos_3 == 'X'
        return win_combos
      elsif pos_1 == 'O' && pos_2 == 'O' && pos_3 == 'O'
        return win_combos
      else
        false
      end
    end
  end