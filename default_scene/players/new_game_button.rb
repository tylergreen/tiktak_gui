module NewGameButton


  attr_accessor :cells1
  
  def self.extended(prop)
    cells1 = prop.scene.find("1")
  end

  def mouse_clicked(e)
#    last_click = id
#    display.text = " you clicked #{id}"
    cells1.mark("T")
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
