title :text => "Tic-Tac-Toe Options"

radio_buttons {
  label :text => "Player 1"
  pair { 
    rbutton_label :text => "Human"
    rbutton :players => "radio_button", :group => "player1", :id => "player1_human"
  }

  pair { 
    rbutton_label :text => "Weak AI"
    rbutton :players => "radio_button", :group => "player1", :id => "player1_weak"
  }

  pair { 
    rbutton_label :text => "Medium AI"
    rbutton :players => "radio_button", :group => "player1", :id => "player1_medium"
  }

  pair { 
    rbutton_label :text => "Hard AI"
    rbutton :players => "radio_button", :group => "player1", :id => "player1_hard"
  }

}

radio_buttons {
  label :text => "Player 2"
  pair { 
    rbutton_label :text => "Human"
    rbutton :players => "radio_button", :group => "player2", :id => "player2_human"
  }

  pair { 
    rbutton_label :text => "Weak AI"
    rbutton :players => "radio_button", :group => "player2", :id => "player2_weak"
  }

  pair { 
    rbutton_label :text => "Medium AI"
    rbutton :players => "radio_button", :group => "player2", :id => "player2_medium"
  }

  pair { 
    rbutton_label :text => "Hard AI"  
    rbutton :players => "radio_button", :group => "player2", :id => "player2_hard"
  }
}

radio_buttons {
  label :text => "Board Size"
  pair { 
  rbutton_label :text => "3x3"
  rbutton :players => "radio_button", :group => "board_sizes", :id => "3"
  }

  pair { 
    rbutton_label :text => "4x4"
    rbutton :players => "radio_button", :group => "board_sizes", :id => "4"
  }
}

radio_buttons {
  label :text => "Rules"
  pair { 
    rbutton_label :text => "normal rules"
    rbutton :players => "radio_button", :group => "board_size", :id => "normal_rules"
  }

  pair { 
    rbutton_label :text => "2x2 block win rule"
    rbutton :players => "radio_button", :group => "board_size", :id => "block_win_rule"
  }
}

footer {
  start_game_button :text => "start game"
}



