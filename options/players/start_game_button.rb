module StartGameButton

  # use the option class here?
  def select_player(player_n)
    player = ['human', 'weak', 'medium', 'hard' ].find do |player_type|
      scene.find(player_n + '_' + player_type).selected?
    end

    case player
    when 'human' then Human
    when 'weak' then RandomAI
    when 'medium' then MediumAI
    when 'hard' then MinimaxAI
    end
  end

  # what if neither is selected?
  def selected_board_size
    ['3', '4'].find do |size|
      scene.find(size).selected?
    end.to_i
  end

  def mouse_clicked(e)
    production.player1 = select_player('player1').new(:x)
    production.player2 = select_player('player2').new(:o)

    production.game_engine = Game.new(selected_board_size, scene.find('block_win_rule').selected?)
    puts "size: #{ selected_board_size} "
    puts "block rule: #{scene.find('block_win_rule').selected?}"
    scene.load('default_scene')    
  end
end
