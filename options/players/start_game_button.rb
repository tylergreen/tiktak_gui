module StartGameButton
  def mouse_clicked(e)
    production.player1 = ['human', 'weak', 'medium', 'hard' ].find do |player|
      scene.find('player1_' + player).selected?
    end
    production.player2 = ['human', 'weak', 'medium', 'hard' ].find do |player|
      scene.find('player2_' + player).selected?
    end
    puts production.player1
    puts production.player2
    scene.load('default_scene')    
  end
end
