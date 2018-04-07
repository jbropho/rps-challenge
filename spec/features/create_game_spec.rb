RSpec.feature "Attack a player", :type => :feature do
   scenario "User visits the home page" do
     visit('/')
     expect(page).to have_text('Player One:')
   end
end
