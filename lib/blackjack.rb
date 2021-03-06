def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  total
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    current_card_total
  elsif user_input == 'h'
    hit = deal_card
    current_card_total += hit
    current_card_total
  elsif user_input != 's' || user_input != 'h'
    invalid_command
    prompt_user
    get_user_input
  end 
end

def invalid_command
  puts "Please enter a valid command"
  
end
  

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  current_total = initial_round
  next_move = hit?(current_total)
  display_card_total(next_move)
  if next_move < 21 
    runner 
  else 
    end_game(next_move) 
  end 
end 
 
    
