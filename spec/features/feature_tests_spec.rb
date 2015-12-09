# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
# describe BattleApp do

feature 'enter player names' do
  scenario 'submitting names' do
    visit '/'
    fill_in(:player1, with: 'Dave')
    fill_in(:player2, with: 'Joan')
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Joan'
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'display player 2 hitpoints' do
  scenario 'display player 2 hit points' do
  visit '/'
  fill_in(:player1, with: 'Dave')
  fill_in(:player2, with: 'Joan')
  click_button 'Submit'
  expect(page).to have_content 'Joan 77hp'
  end
end
