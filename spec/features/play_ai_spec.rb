RSpec.feature "Play a game", :type => :feature do
  scenario 'User picks rock and computer picks paper' do
    Game.any_instance.stub(:player2).and_return ( double(:name => 'computer', :choice => :paper))
    visit ('/play_ai')
    fill_in "player_one", :with => "Bitterman"
    click_button "Submit"
    rock = page.find('input[id="rock"]')
    rock.click
    expect(page).to have_text('computer wins!')
  end
  scenario 'User picks paper and computer picks rock' do
    Game.any_instance.stub(:player2).and_return ( double(:name => 'computer', :choice => :rock))
    visit ('/play_ai')
    fill_in "player_one", :with => "Bitterman"
    click_button "Submit"
    rock = page.find('input[id="paper"]')
    rock.click
    expect(page).to have_text('Bitterman wins!')
  end
end
