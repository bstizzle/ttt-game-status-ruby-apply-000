# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  counter = 0 
  #there are only 8 possible winning sets in tictactoe, so hard code attempts to 8
  while counter < 8
    #set a variable equal to each combo
    win_option = WIN_COMBINATIONS[counter]
    if position_taken?(board, win_option[0])
      if board[win_option[0]] == board[win_option[1]] && board[win_option[0]] == board[win_option[2]]
       return win_option
      end
    end 
    counter += 1
  end
  return false 
end
