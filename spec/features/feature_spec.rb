feature 'Entering names' do
  scenario 'Players can enter and see their names' do
    sign_in_and_play
    expect(page).to have_content('Caxul vs Bejlo')
  end
end

feature 'Hit points' do
  scenario 'Players can see Player 1\'s hit points' do
    sign_in_and_play
    expect(page).to have_content('Caxul - 60 HP')
  end

  scenario 'Players can see Player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content('Bejlo - 60 HP')
  end
end

feature 'Attacking' do
  scenario 'Player 1 can attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Caxul attacks Bejlo!')
  end

  scenario 'Player 2 can attack player 1' do
    sign_in_and_play
    2.times { click_button('Attack') }
    expect(page).to have_content('Bejlo attacks Caxul!')
  end

  scenario 'reduces Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Bejlo - 60 HP'
    expect(page).to have_content 'Bejlo - 50 HP'
  end

  scenario 'reduces Player 1 HP by 10' do
    sign_in_and_play
    2.times { click_button 'Attack' }
    expect(page).not_to have_content 'Caxul - 60 HP'
    expect(page).to have_content 'Caxul - 50 HP'
  end
end

feature 'switching turns' do
  scenario 'starts with Player 1\'s turn' do
    sign_in_and_play
    expect(page).to have_content "Caxul's turn."
  end

  scenario 'switches turn after player attacks' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Bejlo's turn."
  end
end

feature 'Ending the game' do
  scenario 'Player 2 can lose' do
    sign_in_and_play
    11.times { click_button 'Attack' }
    expect(page).to have_content "Caxul triumphs."
  end
end