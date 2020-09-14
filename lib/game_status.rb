# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  counter = 0 
  #there are only 8 possible winning lines in tictactoe, so hard code attempts to 8
  while counter < 8
    #set a variable for the winning line for each iteration
    win_option = WIN_COMBINATIONS[counter]
    #if the first position of the line is not empty
    if position_taken?(board, win_option[0])
      #and if the second and third positions in the line are the same
      if board[win_option[0]] == board[win_option[1]] && board[win_option[0]] == board[win_option[2]]
        #return the winning array
        return win_option
      end
    end 
    counter += 1
  end
  #if all winning possibilities fail, whether for an empty space or for not matching, return false
  return false 
end

def full?(board)
  counter = 0 
  while counter < 9
    if !position_taken?(board, counter)
      return false
    end
    counter += 1 
  end 
  return true 
end 
