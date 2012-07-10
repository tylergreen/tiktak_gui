module DefaultScene

  def show(board)
    board.to_a.each_with_index do |marker, pos|
      find("cell_#{pos}").mark(marker)
    end
  end

  def get_ui_move(mark)
    production.waiting_for_move = true
    while production.waiting_for_move
      sleep(0.1)
    end
    production.next_move
  end

  def build_board
    find("board").build(:board_size => production.board_size.to_i) do
      (0...@board_size ** 2).each { |pos| cell :id => "cell_#{pos}", :text => "", :width => "#{100 / @board_size}%", :height => "#{100 / @board_size}%" }
    end
  end

  def scene_opened(e)
    production.game_thread = Thread.new do
      build_board
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
          begin
            move = get_ui_move(mark)
          end until game.board.legal_move?(move)
        end
        game.make_move(mark, move)
        show(game.board)
        game.board.winner?
      end.first

      display.text = "game over, winner: #{result}"
    end
  end
  
end
