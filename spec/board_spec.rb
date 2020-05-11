require './lib/board'

describe Board do
  let(:tictactoe) { Board.new }

  describe 'update_board' do
    it 'should update position 1 with X' do
      tictactoe.update_board(1, 'X')
      expect(tictactoe.board[0]).to eq('X')
    end
  end

  describe 'player_won?' do
    it 'should return true if a player match 3 rows' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(2, 'X')
      tictactoe.update_board(3, 'X')
      expect(tictactoe.player_won?).to eq(true)
    end

    it 'should return true if a player match 3 columns' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(4, 'X')
      tictactoe.update_board(7, 'X')
      expect(tictactoe.player_won?).to eq(true)
    end

    it 'should return true if a player match 2 diagonals' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(5, 'X')
      tictactoe.update_board(9, 'X')
      expect(tictactoe.player_won?).to eq(true)
    end

    it 'should return false if the game ends in draw' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(2, 'O')
      tictactoe.update_board(3, 'X')
      tictactoe.update_board(4, 'O')
      tictactoe.update_board(5, 'O')
      tictactoe.update_board(6, 'X')
      tictactoe.update_board(7, 'O')
      tictactoe.update_board(8, 'X')
      tictactoe.update_board(9, 'O')
      expect(tictactoe.player_won?).to eq(false)
    end
  end

  describe 'full?' do
    it 'should return true if the board is full' do
      tictactoe.update_board(1, 'X')
      tictactoe.update_board(2, 'O')
      tictactoe.update_board(3, 'X')
      tictactoe.update_board(4, 'O')
      tictactoe.update_board(5, 'O')
      tictactoe.update_board(6, 'X')
      tictactoe.update_board(7, 'O')
      tictactoe.update_board(8, 'X')
      tictactoe.update_board(9, 'O')
      expect(tictactoe.full?).to eq(true)
    end

    it 'should return false if the board is not full' do
      expect(tictactoe.full?).to eq(false)
    end
  end
end
