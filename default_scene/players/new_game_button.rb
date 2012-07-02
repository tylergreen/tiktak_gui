module NewGameButton

  def mouse_clicked(e)
    production.listener.kill
    production.backend_process.kill
    production.listener = scene.listen
    production.backend_process = Thread.new do
      puts "starting backend..."
      %x[cd /Users/jorge/cs/ruby/tiktak/
 /Users/jorge/.rvm/gems/ruby-1.9.3-p125@global/bin/rake gui ] 
    end
  end

end
