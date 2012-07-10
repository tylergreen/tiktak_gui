require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe "Cells" do

  uses_limelight :scene => "default_scene", :hidden => true

  before do
    production.board_size = 3
    scene.scene_opened(nil)
    sleep(0.1)
  end


  it "has n^2 cells" do
    (0...production.board_size ** 2).each do |i|
      scene.find("cell_#{i}").should be_true
    end
  end

  it "knows its own position" do
    (0...production.board_size ** 2).each do |i|
      cell = scene.find("cell_#{i}")
      cell.position.should == i
    end
  end

  it "sets global variable when waiting for move and is clicked" do
    (0...production.board_size ** 2).each do |i|
      production.waiting_for_move = true
      cell = scene.find("cell_#{i}")
      cell.mouse_clicked(nil)
      production.next_move.should == i
    end
  end

  it "can mark itself" do
    (0...production.board_size ** 2).each do |i|
      cell = scene.find("cell_#{i}")
      cell.mark('X')
      cell.text.should == 'X'
    end
  end

  it "will not mark itself with :empty" do
    cell = scene.find("cell_0")
    cell.mark(:empty)
    cell.text.should == ''
  end

  
  
end
