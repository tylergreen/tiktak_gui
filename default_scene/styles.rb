# This file, (styles.rb) inside a scene, should define any styles specific to the containing scene.
# It makes use of the StyleBuilder DSL.
#
# For more information see: http://limelightwiki.8thlight.com/index.php/A_Cook%27s_Tour_of_Limelight#Styling_with_styles.rb
# For a complete listing of style attributes see: http://limelightwiki.8thlight.com/index.php/Style_Attributes

default_scene {
  background_color :black
  horizontal_alignment :center
  vertical_alignment :center
  width "100%"
  height "100%"
}

message_bar {
  width "100%"
  vertical_alignment :top
  horizontal_alignment :center
  text_color :white
  font_size 18
}

board {
  width "60%"
  height "60%"
  background_color :green
  vertical_alignment :center
  horizontal_alignment :center

}

cell {
  width "33%"
  height "33%"
  background_color :blue
  vertical_alignment :center
  horizontal_alignment :center
  margin 5
  text_color :white
  font_size 100
}

player_x {
  width "50%"
  horizontal_alignment :left
  text_color :white
  font_size 20
}

player_o {
    width "50%"
    horizontal_alignment :right
    text_color :white
    font_size 20
}

x_name {
  width "100%"
  horizontal_alignment :center
  text_color :white
  font_size 20
} 

x_wins {
  width "100%"
    horizontal_alignment :center
    text_color :white
    font_size 20
} 

o_name {
  width "100%"
  horizontal_alignment :center
  text_color :white
  font_size 20
} 

o_wins {
  width "100%"
  horizontal_alignment :center
  text_color :white
  font_size 20
}

display {
  width "100%"
  horizontal_alignment :center
  text_color :white
  font_size 20
}

new_game_button {
  height 50
  width 50
  background_color :red
  rounded_corner_radius 10
}

