require 'socket'

module DefaultScene

  # takes in array reprentation of board
  def show(board)
    board.to_a.each_with_index do |marker, pos|
      find("cell_#{pos}").mark(marker)
    end
  end

  def scene_opened(e)
    production.game_thread = Thread.new do
      game = production.game_engine
      game.start
      display = find("display")
    
      player1 = production.player1
      player2 = production.player2

      turns = [[:x, player1], [:o, player2]].cycle.take(game.board.size)
      show(game.board)
      result = turns.find( lambda{[ "Tie Game!"]} ) do |mark, player|
        if player.ai?
          display.text = "waiting for player #{mark} to move"
          move = player.get_move(game.board)
        else
          display.text = "waiting for player #{mark} to click"
          production.waiting_for_move = true
          while production.waiting_for_move
            sleep(0.1)
          end
          move = production.next_move
        end
        game.make_move(mark, move)
        show(game.board)
        game.board.winner?
      end.first

      display.text = result
    end
  end
  
end
