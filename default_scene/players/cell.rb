module Cell



  def self.extended(prop)
    prop.display = prop.scene.find("display")
  end

  attr_accessor :display
  
  def mouse_clicked(e)
    display.text = "clicked #{id}"
  end
      
end
