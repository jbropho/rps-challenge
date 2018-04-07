RSpec.feature "Attack a player", :type => :feature do
   scenario 'User visits the home page' do
     visit('/')
     expect(page).to have_text('Player One:')
   end
   scenario 'User inputs player names' do
     visit('/')
     fill_in "player_one", :with => "Biker"
     fill_in "player_two", :with => "Bitterman"
     click_button "Submit"
     expect(page).to have_text("Biker")
     expect(page).to have_text("Bitterman")
   end
end
