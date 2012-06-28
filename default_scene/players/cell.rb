module Cell

  attr_accessor :display
  attr_reader :last_click
    
  def self.extended(prop)
    prop.display = prop.scene.find("display")
  end

  def mouse_clicked(e)
    if production.waiting_for_move
      production.last_click = id.split('_')[1] # depends on the cell id
      production.waiting_for_move = false
    end
    display.text = " you clicked #{id}"
  end

  def mark(marker)
    self.text = marker
  end
    
    #s = TCPSocket.new 'localhost', 2000
    #s.puts "clicked: #{ id }"
    #response = s.gets
    #    raise "error" unless response =~ "ok"
    #display.text += response


  def send_message(msg)
#    raise "error" unless response =~ "ok"
    display.text += response
  end

  
end
