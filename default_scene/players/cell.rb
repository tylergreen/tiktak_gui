module Cell

  attr_accessor :display
  attr_reader :last_click
    
  def self.extended(prop)
    prop.display = prop.scene.find("display")
  end

  def mouse_clicked(e)
    last_click = id
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
