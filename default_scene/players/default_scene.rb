require 'socket'

module DefaultScene

  def listen
    loop do
      client = production.server.accept
    request = client.gets("\n")
    if request == "get_move\n"
      client.puts "click Dummy\n"
      elsif m = request.match( /show_move (cell_\d+)/) # change to update_board
      # update the entire board instead of individual cell
      cell = find(m[1]) 
      cell.mark("X") 
      client.puts("ok")
    else
      puts "unknown request: #{request}"
    end
    end
  end

  def scene_opened(e)
    display = find("display")
    raise "no display" if display.nil?
    display.text = "Opened!"
    listen
  end
  
end
