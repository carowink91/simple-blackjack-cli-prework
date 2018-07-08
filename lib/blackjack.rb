

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total (card_total)
  card_total
end

def hit? (card_total)
  prompt_user
  user_input = get_user_input

  if user_input == 's'
    card_total
  elsif user_input == 'h'
    newCard = deal_card
    card_total += newCard
  else
    puts "Please enter a valid command"
    prompt_user
    card_total
  end
end

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit? (card_total)
    display_card_total (card_total)

  end

  end_game (card_total)
end
