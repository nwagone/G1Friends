require 'rails_helper.rb'

feature "User logs out of account" do
    scenario "User successfully logs out of account from upcoming events page" do
        #create account start
        visit signup_path
        expect(page).to have_content("New User")
        fill_in "Email", with: "email@uncc.edu"
        fill_in "Password", with: "49er"
        fill_in "Password confirmation", with: "49er"
        click_button "Create User"
        expect(page).to have_content("Login")
        #create account end
        
        #log in start
        visit login_path
        expect(page).to have_content("Login")
        fill_in "Email", with: "email@uncc.edu"
        fill_in "Password", with: "49er"
        click_button "Log In"
        expect(page).to have_content("Upcoming Events")
        #log in end
        
        visit calendar_index_url
        expect(page).to have_content("Upcoming Events")
        click_link "Logout"
        expect(page).to have_content("Login")
    end
end
