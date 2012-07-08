require 'socket'

module DefaultScene

  # takes in array reprentation of board
  def show(board)
    board.to_a.each_with_index do |marker, pos|
      find("cell_#{pos}").mark(marker)
    end
  end

  def scene_opened(e)
    game = Game.new(3)
    player1 = Human.new(:x)
    player2 = Human.new(:o)
    game.start

    turns = [[:x, @player1], [:o, @player2]].cycle.take(game.board.size)
    show(game.board)
    result = turns.find( lambda{[ "Tie Game!"]} ) do |mark, player|
      production.waiting_for_move = true
      while production.waiting_for_move
        sleep(0.1)
      end
      move = production.next_move
      game.make_move(mark, move)
      show(game.board)
      game.board.winner?
    end.first

    find("display").text = result
  end
  
end
