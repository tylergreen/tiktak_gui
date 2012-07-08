module StartGameButton
  def mouse_clicked(e)
    player1 = ['human', 'weak', 'medium', 'hard' ].find do |player|
      scene.find('player1_' + player).selected?
    end
    player2 = ['human', 'weak', 'medium', 'hard' ].find do |player|
      scene.find('player2_' + player).selected?
    end
    production.game_engine = Game.new(3, LimelightPlayer, LimelightPlayer, false, CL_Display.new)
    scene.load('default_scene')    
  end
end
