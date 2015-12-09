def sign_in_and_play
  visit '/'
  fill_in(:player1, with: 'Dave')
  fill_in(:player2, with: 'Joan')
  click_button 'Submit'
end
