require 'socket'

module DefaultScene

  def extract_board(request)
    request[1]
  end

  def listen
    loop do
      client = production.server.accept
      message = client.gets
      begin
        request = JSON.parse(message)
      rescue 
        puts "could not parse message #{message}"
        next
      end
      case request.first
      when "get_move"
        client.puts "click Dummy"   # needs to have some contract with tcp_player
      when "show_new_board"
        display = find("display")
        display.text = "request to update board"
        display_new_board(extract_board(request)) # contract with tiktak
        client.puts("ok")
      else
        client.puts "unknown request: #{ request }"
        puts "unknown request: #{ request }"
      end
    end
  end

  # takes in array reprentation of board
  def display_new_board(board_array)
    board_array.each_with_index do |marker, pos|
      find("cell_#{pos}").mark(marker) unless marker == "empty"
    end
  end

  def scene_opened(e)
    display = find("display")
    raise "no display" if display.nil?
    display.text = "Opened!"
    listen
  end
  
end
