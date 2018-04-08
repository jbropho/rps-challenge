RSpec.feature "Initialise a game", :type => :feature do
   scenario 'User visits the play_ai plage' do
     visit('/play_ai')
     expect(page).to have_text('Player One:')
   end

   scenario 'User inputs two player names' do
     visit('/play_ai')
     fill_in "player_one", :with => "Biker"
     click_button "Submit"
     expect(page).to have_text("Biker")
   end
end
