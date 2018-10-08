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
<<<<<<< HEAD

=======
#  i = 1
#  for empty_board in board
#    if !position_taken?(board, i)
#      return false
  #    i += 1
  #  end
#  end
>>>>>>> cf6abec9b8e556b7119b2bad3b37d8f0feb383ba
  for win_combination in WIN_COMBINATIONS
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      false
    end
  end
<<<<<<< HEAD


  counter = 0
  while counter < board.length-1
    if position_taken?(board, counter)
      return false
      counter += 1
    else
     return false
     counter += 1
=======
  
  counter = 0
  while counter < board.length-1
    if position_taken?(board, counter)
      return !position_taken?(board, counter)
      counter +=1
    else
      return position_taken?(board, counter)
      counter += 1
>>>>>>> cf6abec9b8e556b7119b2bad3b37d8f0feb383ba
    end
  end
end

<<<<<<< HEAD
def full?(board)
  board.each do |full_board|
    if full_board == "X" || full_board == "O"
      full_board = true
    else
      full_board = false
      break
    end
  end
end

def draw?(board)
  if won?(board)
    return false
  elsif !won?(board)
    if full?(board)
      return true
    else
      return false
    end
  end
end

def over?(board)
  if won?(board)
    return true
  elsif draw?(board)
    return true
  elsif full?(board)
    return true
  else
    return false
  end
end
=begin
[0, 1, 2],
[3, 4, 5],
[6, 7, 8],
[0, 3, 6],
[1, 4, 7],
[2, 5, 8],
[0, 4, 8],
[2, 4, 6]
=end
def winner(board)
  if won?(board) && board[0] == "X" && board[1] == "X" && board[2] == "X"
    return "X"
  elsif won?(board) && board[3] == "X" && board[4] == "X" && board[5] == "X"
      return "X"
  elsif won?(board) && board[6] == "X" && board[7] == "X" && board[8] == "X"
      return "X"
  elsif won?(board) && board[0] == "X" && board[3] == "X" && board[6] == "X"
      return "X"
  elsif won?(board) && board[1] == "X" && board[4] == "X" && board[7] == "X"
      return "X"
  elsif won?(board) && board[2] == "X" && board[5] == "X" && board[8] == "X"
      return "X"
  elsif won?(board) && board[0] == "X" && board[4] == "X" && board[8] == "X"
      return "X"
  elsif won?(board) && board[2] == "X" && board[4] == "X" && board[6] == "X"
      return "X"
  elsif won?(board) && board[0] == "O" && board[1] == "O" && board[2] == "O"
      return "O"
  elsif won?(board) && board[3] == "O" && board[4] == "O" && board[5] == "O"
      return "O"
  elsif won?(board) && board[6] == "O" && board[7] == "O" && board[8] == "O"
      return "O"
  elsif won?(board) && board[0] == "O" && board[3] == "O" && board[6] == "O"
      return "O"
  elsif won?(board) && board[1] == "O" && board[4] == "O" && board[7] == "O"
      return "O"
  elsif won?(board) && board[2] == "O" && board[5] == "O" && board[8] == "O"
      return "O"
  elsif won?(board) && board[0] == "O" && board[4] == "O" && board[8] == "O"
      return "O"
  elsif won?(board) && board[2] == "O" && board[4] == "O" && board[6] == "O"
      return "O"
=======

def full?(board)
  counter = 0
  full = false
  while counter < board.length-1
    if position_taken?(board, counter)
       full = true
       counter += 1 
    else
       full = false
       break
     end
    end
    return full
  end
  
  def draw?(board)
    counter = 0
    draw = false
    wonTopRow = true
    wonDiagonaly = true
    gameInProgress = true
    
    while counter < board.length-1
      if position_taken?(board, counter)
         draw = true
         counter += 1
      
      elsif !position_taken?(board, counter)
         draw = false
         break
      end
    end
   
      if (board[0] == "X" && board[1] == "X" && board[2]  == "O") || (board[0] == "O" && board[1] == "O"  && board[2] == "O")
          wonTopRow = false
          return wonTopRow
    
    elsif (board[0] == "X" && board[4] == "X" &&            board[8] == "X" ) || (board[0] == "O" &&          board[4] == "O" && board[8] == "O")
          wonDiagonaly = false
          return wonDiagonaly
          
    elsif (board[2] == "X" && board[4] == "X" && board[6] == "X" ) ||
          (board[2] == "O" && board[4] == "O" && board[6] == "O")
          wonDiagonaly = false
          return wonDiagonaly
    
    elsif full?(board) == false
          gameInProgress = false
          return gameInProgress
          
      end
    return draw
  end
  
  def winner(board)
  
  if (won?(board) && board[0] == "O" && board[1] == "O"  && board[2] == "O") || (won?(board) && board[3] == "O" && board[4] == "O"  && board[5] == "O") || (won?(board) && board[6] == "O" && board[7] == "O"  && board[8] == "O") || (won?(board) && board[0] == "O" && board[3] == "O"  && board[6] == "O") || (won?(board) && board[1] == "O" && board[4] == "O"  && board[7] == "O") || (won?(board) && board[2] == "O" && board[5] == "O"  && board[8] == "O") || (won?(board) && board[0] == "O" && board[4] == "O"  && board[8] == "O") || (won?(board) && board[2] == "O" && board[4] == "O"  && board[6] == "O")
    return "O"
  elsif
    (won?(board) && board[0] == "X" && board[1] == "X"  && board[2] == "X") || (won?(board) && board[3] == "X" && board[4] == "X"  && board[5] == "X") || (won?(board) && board[6] == "X" && board[7] == "X"  && board[8] == "X") || (won?(board) && board[0] == "X" && board[3] == "X"  && board[6] == "X") || (won?(board) && board[1] == "X" && board[4] == "X"  && board[7] == "X") || (won?(board) && board[2] == "X" && board[5] == "X"  && board[8] == "X") || (won?(board) && board[0] == "X" && board[4] == "X"  && board[8] == "X") || (won?(board) && board[2] == "X" && board[4] == "X"  && board[6] == "X")
      return "X"
>>>>>>> cf6abec9b8e556b7119b2bad3b37d8f0feb383ba
  else
    return nil
  end
end
<<<<<<< HEAD
=======

      
        
         
    
      
>>>>>>> cf6abec9b8e556b7119b2bad3b37d8f0feb383ba
