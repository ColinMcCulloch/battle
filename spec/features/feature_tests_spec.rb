# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
# describe BattleApp do

feature 'enter player names' do
  scenario 'submitting names' do
    visit '/'
    fill_in(:player1, with: 'Dave')
    fill_in(:player2, with: 'Joan')
    click_button 'submit'
    expect(page).to have_content 'Dave vs. Joan'
  end
end
