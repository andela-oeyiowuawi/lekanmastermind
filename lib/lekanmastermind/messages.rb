module Lekanmastermind
  class Messages
    def welcome
       <<-EOS
               *************************************************
               *          Welcome to mastermind                *
               *                                               *
               *      Press p(lay) to start a new game         *
               *      Press (i)nstruction to load a saved game *
               *      Press (t)op to view Top scores           *
               *      Press (q)uit to quit the game at anytime *
               *      >                                        *
               *************************************************
      EOS
    end

    def instructions
      <<-EOS
               **************************************************
               *      This is MASTERMIND game v0.1.0            *
               *            By Olalekan Eyiowuawi               *
               *      Enjoy and expect the next version         *
               *      Press q at anytime to quit the game.      *
               *      Enter your level and number of players    *
               *      beginner, intermediate, advanced          *
               *   To view guess history, enter h at any time   *
               *         when the game starts                   *
               *      Press Menu to go back to the menu.        *
               **************************************************
      EOS
    end

    def error_input
      <<-EOS
        ************************************************************************
        * You've entered an invalid letter. Read the instruction and try again *
        ************************************************************************
      EOS
    end

    def select_level
      <<-EOS
             *********************************************************
             *       Select Your preferred level of difficulty       *
             *          Enter 'beginner' for beginner level          *
             *          Enter 'intermediate' for intermediate        *
             *          Enter 'advanced'  for advanced level         *
             *********************************************************
      EOS
    end

    def number_of_players
      'Enter the number of players'
    end

    def level_welcome(level, comp_handler)
      <<-EOS
          *********************************************************************
              You are playing the #{level} level. You can choose
            #{comp_handler.number_of_character} colors from the following colors
              #{comp_handler.level_colors} To enter a sequence,
                   Enter just the first letters of your color sequence
          ***********************************************************************
      EOS
    end

    def go_to_menu
      "Enter menu to back to the menu"
    end

    def congratulation(player, trial, time)
      <<-EOS
             *********************************************************
                     Congratulation #{player.name}!!
                 You guessed the correct sequence '#{player.guess}'
                   in #{trial} trial(s) over #{time / 3600}hrs
                        #{time / 60} min #{time % 60} secs.
            *********************************************************
      EOS
    end

    def save_record
      'Do you want to save your record? y/n'
    end

    def view_top_scores
      'Do you want to view top scores? y/n'
    end

    def replay_option
      'Do you want to play again? Press Y or N'
    end

    def guess_process_message(guess, exact, partial, chances)
      <<-EOS
           *****************************************************************
            '#{guess.upcase}' has #{exact} exacts and #{partial} partials
                  #{12 - chances} chances left
           *****************************************************************
      EOS
    end

    def top_ten
      '========= TOP TEN ========='
    end

    def out_of_chance
      "GAME OVER!! You're out of Trials!"
    end

    def goodbye
      'Thanks for playing Master Mind. See you soon'
    end
  end
end
