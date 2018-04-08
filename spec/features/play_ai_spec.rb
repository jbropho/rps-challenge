require 'pry'

def setup_session(session = {})
  Rack::Session::Abstract::SessionHash.stub(:new).and_return(session)
end

RSpec.feature "Play a game", :type => :feature do
  scenario 'User picks rock and computer picks paper' do
    visit ('/play_ai')
    fill_in "player_one", :with => "Bitterman"
    click_button "Submit"
    rock = page.find('input[id="rock"]')
    rock.click
    expect(page).to have_text('computer wins!')
  end
end


# p1 = double(:choice => :rock, :choice= => true, :name => "Bitterman")
# p2 = double(:choice => :paper, :name => "Biker")
# setup_session :player_one => p1, :player_two => p2


# can I stub a specific thing in session?
