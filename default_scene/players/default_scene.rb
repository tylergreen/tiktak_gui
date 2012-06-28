require 'socket'

module DefaultScene

  def extract_board(request)
    request[1]
  end

  def listen
    display = find("display")
    loop do
      display.text = "waiting for message"
      client = production.server.accept
      message = client.gets
      begin
        request = JSON.parse(message)
      rescue 
        puts "could not parse message #{message}"
        next
      end
      case request['command']
      when 'get_move'
        display.text = "waiting for input"
        # start listening for next click
        production.last_click = nil
        production.waiting_for_move = true
        while production.last_click.nil?
          sleep(1)
        end
        client.puts production.last_click
      when 'show_new_board'
        display.text = "request to update board"
        display_new_board(request['board']) # contract with tiktak
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
      if marker == "empty"
        
        find("cell_#{pos}").mark(marker) unless marker == "empty"
      end
      
    end
  end

  def scene_opened(e)
    listen
  end
  
end
