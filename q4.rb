# Part 4: Rock Paper Scissors
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError <  StandardError ; end
class RPS
    def rps_game_winner(game)
        raise WrongNumberOfPlayersError unless game.length == 2
        raise NoSuchStrategyError unless game == "R" or "P" or "S"
        @playerOne = game[0][0]
        @playerTwo = game[1][0]
        @moveOne = game[0][1]
        @moveTwo = game[1][1]
        if @moveOne == "R"
            if @moveTwo == "P"
                return game[1]
            elsif @moveTwo == "S"
                return game[0]
            else
                return "Tie"
            end
        elsif @moveOne == "P"
            if @moveTwo == "S"
                return game[1]
            elsif @moveTwo == "R"
                return game[0]
            else
                return "Tie"
            end
        else
            if @moveTwo == "R"
                return game[1]
            elsif @moveTwo == "P"
                return game[0]
            else
                return "Tie"
            end
        end
    end
    def rps_tournament_winner(tourney)
        @winner = rps_game_winner(tourney)
        if @winner == "Tie"
            @gameOne = rps_tournament_winner(tourney[0])
            @gameTwo = rps_tournament_winner(tourney[1])
        else
            return @winner
        end
    end
end
puts "Part 4a: Rock Paper Scissors"
game = RPS.new
puts "Armando throws paper and Dave throws scissors"
winner = game.rps_game_winner([["Armando", "P"], ["Dave", "S"]])[0] + " wins."
puts winner
puts "Part 4b: Tournament"
tourney = [
            [
              [["Armando", "P"], ["Dave", "S"]],
              [["Richard", "R"], ["Michael", "S"]],
            ],
            [
              [["Allen", "S"], ["Omer", "P"]],
              [["David E.", "R"], ["Richard X", "P"]]
            ]
          ]
winner = game.rps_tournament_winner(tourney)[0] + " wins."
puts winner
