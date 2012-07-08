module Cell

  def mouse_clicked(e)
    if production.waiting_for_move
      production.next_move = position
      production.waiting_for_move = false
    end
  end

  def position
    id.split('_')[1].to_i
  end

  def mark(marker)
    if marker == :empty
      self.text == ''
    else
      self.text = marker
    end
  end
  
end
