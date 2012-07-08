require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe "Default Scene" do

  uses_limelight :scene => "default_scene", :hidden => true

  it "should have default text" do
    scene.children.size.should == 7
    root = scene.children[0]
    root.text.should == "message bar"
  end

end
