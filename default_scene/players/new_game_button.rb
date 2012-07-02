module NewGameButton

  def mouse_clicked(e)
    production.listener.kill
    production.backend_process.kill
    scene.load('options')
  end


end
