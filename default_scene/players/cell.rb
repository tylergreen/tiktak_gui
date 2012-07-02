module Cell

  def mouse_clicked(e)
    if production.waiting_for_move
      production.client.puts(id.split('_')[1])
      production.waiting_for_move = false
    end
  end

  def position
    id.split('_')[1]
  end

  def mark(marker)
    self.text = marker
  end
  
end
