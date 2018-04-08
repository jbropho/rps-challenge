RSpec.feature "Initialise a game", :type => :feature do
   scenario 'User visits the play_ai plage' do
     visit('/play_ai')
     expect(page).to have_text('Player One:')
   end
end
