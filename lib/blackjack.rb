def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  
  if user_input == "s"
    total
    
  elsif user_input == "h"
    total += deal_card
    return total
    
  else get_user_input
    invalid_command
    prompt_user
  end
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome 
 card_total = initial_round
 ending_total = 21 
 if card_total < ending_total
   hit? 
   display_card_total
 else card_total >= ending_total
  end_game
end
    
