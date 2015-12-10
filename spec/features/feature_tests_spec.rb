# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
# describe BattleApp do

feature 'enter player names' do
  scenario 'submitting names' do
  sign_in_and_play
    expect(page).to have_content 'Dave vs. Joan'
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'display player 2 hitpoints' do
  scenario 'display player 2 hit points' do
  sign_in_and_play
  expect(page).to have_content 'Joan 77hp'
  end
end

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'attack player2 and receive confirmation' do

  scenario 'attack and confirm' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('You have attacked Joan')
  end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

feature 'reduces hp' do

  scenario 'hp is deducted when attacked' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play'
    expect(page).to have_content 'Joan 67hp'
  end
#   As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'switch turns' do
  scenario 'click a button to switch turns' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play'
    expect

  end
end


end
