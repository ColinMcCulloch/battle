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
  expect(page).to have_content 'Joan 50hp'
  end
end

# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points

feature 'display player 1 hitpoints' do
  scenario 'display player 1 hit points' do
  sign_in_and_play
  expect(page).to have_content 'Dave 50hp'
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
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation

feature 'attack player1 and receive confirmation' do
  scenario 'attack and confirm' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play'
    click_button 'Attack'
    expect(page).to have_content('You have attacked Dave')
  end
end


feature 'reduces players hp when attacked' do
  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP
  scenario 'hp is deducted when attacked' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play'
    expect(page).to have_content 'Joan 40hp'
  end

  #   As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP
  scenario 'hp is deducted when attacked' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play'
    click_button 'Attack'
    click_button 'Play'
    expect(page).to have_content 'Dave 40hp'
  end
end

  #   As two Players,
  # So we can continue our game of Battle,
  # We want to switch turns

  feature 'switch turns' do
    scenario 'click a button to switch turns' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Play'
      expect(page).to have_content "Joan's turn"
    end
  end

  #   As a Player,
  # So I can Lose a game of Battle,
  # I want to see a 'Lose' message if I reach 0HP first

  feature 'Game ends' do
    scenario 'Game ends when player2 hp reaches zero' do
      sign_in_and_play
      8.times do
        click_button 'Attack'
        click_button 'Play'
      end
      click_button 'Attack'
      expect(page).to have_content  "Game Over, Dave is the winner"
    end
  end
