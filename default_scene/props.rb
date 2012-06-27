# This file (props.rb) defines all the props that appear in a scene when loaded.  It makes use of the
# PropBuilder DSL.
#
# For more information see: http://limelightwiki.8thlight.com/index.php/A_Cook%27s_Tour_of_Limelight#PropBuilder_DSL

# root :text => "This is the Default Scene scene."

message_bar :text => "message bar"

display :id => "display", :text => "click a cell"

board {
  (0...9).each { |pos| cell :id => "cell_#{pos}", :text => "" }
}

player_x {
  x_name :text => "Player X"
  x_wins :text => "wins: "
} 


player_o {
  o_name :text => "Player O"
  o_wins :text => "wins: "
}

ties_counter

new_game_button :text => "new game"
