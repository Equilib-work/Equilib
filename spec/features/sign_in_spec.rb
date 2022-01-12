describe "the signin process", :type => :feature do
    before :each do
      User.new(:email => 'user@example.com', :password => 'password')
    end
  
    it "signs me in" do
      visit '/users/sign_in'
      within(".shadow-2xl") do
        fill_in 'user_email', :with => 'user@example.com'
        fill_in 'user_password', :with => 'password'
      end
      click_button 'Log Me In'
      expect(page).to have_content 'Greet'
    end
  end