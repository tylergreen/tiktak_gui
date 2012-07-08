player1_select {
  label :text => "Player 1"
  player1_human :players => "radio_button", :group => "player1", :id => "player1_human", :on_button_pushed => 'production.player1 = :human' 
  player1_human_label :text => "Human"
  
  player1_random :players => "radio_button", :group => "player1", :id => "player1_weak"
  player1_weak_label :text => "weak AI", :on_button_pushed => 'production.player1 = :random_ai' 
  
  player1_medium :players => "radio_button", :group => "player1", :id => "player1_medium", :on_button_pushed => 'production.player1 = :medium_ai' 
  player1_medium_label :text => "MediumAI"
  
  player1_hard :players => "radio_button", :group => "player1", :id => "player1_hard", :on_button_pushed => 'production.player1 = :hard_ai' 
  player1_hard_label :text => "Hard AI"
}

player2_select {
    label :text => "Player 2"
    player2_human :players => "radio_button", :group => "player2", :id => "player2_human", :on_button_pushed => 'production.player2 = :human' 
  label :text => "Human"
  
  player2_random :players => "radio_button", :group => "player2", :id => "player2_weak", :on_button_pushed => 'production.player2 = :weak_ai' 
  label :text => "weak AI"
  
  player2_medium :players => "radio_button", :group => "player2", :id => "player2_medium", :on_button_pushed => 'production.player2 = :medium_ai' 
  player2_medium_label :text => "MediumAI"
  
  player2_hard :players => "radio_button", :group => "player2", :id => "player2_hard", :on_button_pushed => 'production.player2 = :hard_ai' 
  player2_hard_label :text => "Hard AI"
}

board_size {
  label :text => "3x3"
  board_3x3 :players => "radio_button", :group => "board_sizes", :id => "3"
  label :text => "4x4"
  board_4x4 :players => "radio_button", :group => "board_sizes", :id => "4"
}

block_rule {
  label :text => "normal rules"
  normal_rules :players => "radio_button", :group => "board_size", :id => "normal_rules"
  label :text => "2x2 block win rule"
  block_win_rule :players => "radio_button", :group => "board_size", :id => "block_win_rule"
}

  
start_game_button :text => "start game"
