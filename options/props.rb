player1_select {
  label :text => "Player 1"
  player1_human :players => "radio_button", :group => "player1", :id => "player1_human"
  player1_human_label :text => "Human"
  
  player1_random :players => "radio_button", :group => "player1", :id => "player1_weak"
  player1_weak_label :text => "weak AI"
  
  player1_medium :players => "radio_button", :group => "player1", :id => "player1_medium"
  player1_medium_label :text => "MediumAI"
  
  player1_hard :players => "radio_button", :group => "player1", :id => "player1_hard"
  player1_hard_label :text => "Hard AI"
}

player2_select {
    label :text => "Player 2"
    player2_human :players => "radio_button", :group => "player2", :id => "player2_human"
  player2_human_label :text => "Human"
  
  player2_random :players => "radio_button", :group => "player2", :id => "player2_weak"
  player2_weak_label :text => "weak AI"
  
  player2_medium :players => "radio_button", :group => "player2", :id => "player2_medium"
  player2_medium_label :text => "MediumAI"
  
  player2_hard :players => "radio_button", :group => "player2", :id => "player2_hard"
  player2_hard_label :text => "Hard AI"
}
  
start_game_button :text => "start game"
