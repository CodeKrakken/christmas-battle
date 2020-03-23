feature 'Features' do
  before :each do
    sign_in_and_play
  end

  feature 'Entering names' do
    scenario 'Players can enter and see their names' do
      expect(page).to have_content('Caxul vs Bejlo')
    end
  end

  feature 'Hit points' do
    scenario 'Players can see Player 1\'s hit points' do
      expect(page).to have_content('Caxul - 60 HP')
    end

    scenario 'Players can see Player 2\'s hit points' do
      expect(page).to have_content('Bejlo - 60 HP')
    end
  end

  feature 'Attacking' do

    before :each do
      click_button('Attack')
    end

    scenario 'Player 1 can attack player 2' do
      expect(page).to have_content('Caxul attacks Bejlo!')
    end

    scenario 'reduces Player 2 HP by 10' do
      expect(page).not_to have_content 'Bejlo - 60 HP'
      expect(page).to have_content 'Bejlo - 50 HP'
    end

    scenario 'switches turn after player attacks' do
      expect(page).to have_content "Bejlo's turn."
    end

    feature 'Player 2 Attacks' do
      before :each do
        click_button('Attack')
      end

      scenario 'Player 2 can attack player 1' do
        expect(page).to have_content('Bejlo attacks Caxul!')
      end

      scenario 'reduces Player 1 HP by 10' do
        expect(page).not_to have_content 'Caxul - 60 HP'
        expect(page).to have_content 'Caxul - 50 HP'
      end
    end
  end

  feature 'switching turns' do
    scenario 'starts with Player 1\'s turn' do
      expect(page).to have_content "Caxul's turn."
    end
  end

  feature 'Ending the game' do
    scenario 'Player 2 can lose' do
      11.times { click_button 'Attack' }
      expect(page).to have_content "Caxul triumphs."
    end
  end
end