def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.strip
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  card1 + card2
end

def hit?(current_card_total)
  # code hit? here
  count = 0
  while count == 0 do
    prompt_user
    input = get_user_input
    if input == "h"
      new_total = current_card_total + deal_card
      count = 1
    elsif input == "s"
      new_total = current_card_total
      count = 1
    else
      invalid_command
    end
  end
  new_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  current_card_total = 0
  welcome
  current_card_total += initial_round
  while current_card_total <= 21 do
    current_card_total = hit?(current_card_total)
    display_card_total(current_card_total)
  end
  end_game(current_card_total)
end
