require 'socket'

module DefaultScene

  def listen
    production.backend_process = Thread.new do
      %x[cd /Users/jorge/cs/ruby/tiktak/
 /Users/jorge/.rvm/gems/ruby-1.9.3-p125@global/bin/rake gui ] 
    end

    Thread.new do
      display = find("display")
      loop do
        display.text = "waiting for message"
        client = production.server.accept
        production.client = client
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
          production.waiting_for_move = true
        when 'show_new_board'
          display.text = "request to update board"
          display_new_board(request['board']) # contract with tiktak
          client.puts("ok")
        when 'game_over'
          result = request['result']
          display.text = "Game over: #{result}"
          # kill the backend process
          # show the result
          break
        else
          client.puts "unknown request: #{ request }"
          puts "unknown request: #{ request }"
        end
      end
    end
  end

  # takes in array reprentation of board
  def display_new_board(board_array)
    board_array.each_with_index do |marker, pos|
      find("cell_#{pos}").mark(marker)
    end
  end

  def scene_opened(e)
    production.listener = scene.listen
  end
  
end
