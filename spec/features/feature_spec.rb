feature 'Testing Infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/test')
    expect(page).to have_content('Testing Infrastructure Working!')
  end
end

feature 'Entering names' do
  scenario 'Players can enter and see their names' do
    visit('/')
    fill_in :player_1_name, with: 'Caxul'
    fill_in :player_2_name, with: 'Bejlo'
    click_button('Submit')
    expect(page).to have_content('Caxul vs Bejlo')
  end
end