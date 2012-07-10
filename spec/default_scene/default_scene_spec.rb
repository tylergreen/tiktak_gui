require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe "Default Scene" do

  uses_limelight :scene => "default_scene", :hidden => true

  it "should have default text" do
    scene.children.size.should == 6
    root = scene.children[0]
  end

  it "can show the board" do
    show(Game.new(3).board)
    (0...9).each do |i|
      scene.find("cell_#{i}").text.should == ''
    end
  end

end
