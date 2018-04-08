RSpec.feature "Initialise a game", :type => :feature do
   scenario 'User visits the home page' do
     visit('/')
     expect(page).to have_text('Player One:')
   end

   scenario 'User inputs two player names' do
     visit('/')
     fill_in "player_one", :with => "Biker"
     click_button "Submit"
     expect(page).to have_text("Biker")
   end
end
