module NewGameButton

  def mouse_clicked(e)
    production.game_thread.kill
    scene.load('options')
  end


end
