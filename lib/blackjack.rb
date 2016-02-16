def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp

#   unless answer == ("h" ||"s")
#     invalid_command
#   end
  return answer
end

def end_game(totnum)
  puts "Sorry, you hit #{totnum}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user
  draw = get_user_input

 if draw == "h"
    newcard = deal_card
    new_card_total = newcard + card_total
   return new_card_total
 else draw == "s"
   return card_total
 end
end


def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  begnum = initial_round
  final =  hit?(begnum)
  display_card_total(final)
  until final >21
    res = hit?(final)
    display_card_total(res)
  end
    puts "Sorry, you hit #{final}. Thanks for playing!"
end

