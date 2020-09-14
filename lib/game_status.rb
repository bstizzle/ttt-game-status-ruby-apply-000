# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  #iterate over the possible wins
  WIN_COMBINATIONS.each do |win_option|
    #if the first position of the winning possibility is filled
    if position_taken?(board, win_option[0])
      #and if the second and third positions in the line are the same
      if board[win_option[0]] == board[win_option[1]] && board[win_option[0]] == board[win_option[2]]
        #return the winning array
        return win_option
      end
    end
  end
  #if all winning possibilities fail, whether for an empty space or for not matching, return false
  return false 
end

def full?(board)
  full_board == |index|
    position_taken?(board, index)
  end 
  #otherwise, return true
  return true 
end 

def draw?(board)
  #if the board full but not won, return true
  if !won?(board) && full?(board)
    return true
  else
    return false
  end 
end

def over?(board)
  #if game is either won or a draw (because the draw method only returns true if the board is also full), return true
  if won?(board) || draw?(board)
    return true
  else
    return false
  end
end 

def winner(board)
  #if the game is won, return the character present in the winning line
  if won?(board)
    win_line = won?(board)
    return "#{board[win_line[0]]}"
  else 
    return nil
  end 
end 

