# This file (production.rb) is the first file loaded opening a production.  It must define a module named 'Production'.
# The containing production will acquire all the behavior defined in this module.
# You may define serveral hooks and initialization steps here.

module Production

#  # Define this method if you want the production name to be different from the default, directory name.
#  def name
#    return Ttt Gui
#  end
#
#  # Returns the minimum version of limelight required to run this production.  Default: "0.0.0"
#  # If the version of limelight used to open this production is less than the minimum, 
#  # an error will be displayed (starting with version 0.4.0).
#  #
#  def minimum_limelight_version
#    return "0.5.5"
#  end
#
#  # Hook #1.  Called when the production is newly created, before any loading has been done.
#  # This is a good place to require needed files and instantiate objects in the business layer.
  def production_opening
    require 'tiktak'
  end
#
#  # Hook #2.  Called after internal gems have been loaded and stages have been instantiated, yet before
#  # any scenes have been opened.
  attr_accessor :game_engine, :next_move, :player1, :player2, :waiting_for_move, :game_thread, :board_size

  def production_loaded
    @waiting_for_move = false
    # @player1 = :human
    # @player2 = :human
  end
#
#  # Hook #3.  Called when the production, and all the scenes, have fully opened.
#  def production_opened
#
#  end

    
#
#  # The system will call this methods when it wishes to close the production, perhaps when the user quits the
#  # application.  By default the production will always return true. You may override this behavior by re-implenting
#  # the methods here.
#  def allow_close?
#    return true
#  end
#
#  # Called when the production is about to be closed.
#  def production_closing
#  end
#
#  # Called when the production is fully closed.
#  def production_closed
#  end

end
