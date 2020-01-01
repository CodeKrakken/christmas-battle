feature 'Testing Infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/test')
    expect(page).to have_content('Testing Infrastructure Working!')
  end
end

feature 'Entering names' do
  scenario 'Players can enter and see their names' do
    sign_in_and_play
    expect(page).to have_content('Caxul vs Bejlo')
  end
end

feature 'Hit points' do
  scenario 'Players can see Player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content('Bejlo - 60 HP')
  end
end