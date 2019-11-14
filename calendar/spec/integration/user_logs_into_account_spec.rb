require 'rails_helper.rb'

feature "User logs into account" do
    
    scenario "User successfully navigates to the log in page" do
        visit root_path
        expect(page).to have_content("Login")
        click_link "Log In"
        expect(page).to have_field("Email")
        expect(page).to have_field("Password")
    end

    scenario "User successfully logs in and views the upcoming events page" do
        #create account start
        visit signup_path
        expect(page).to have_content("New User")
        fill_in "Email", with: "email@uncc.edu"
        fill_in "Password", with: "49er"
        fill_in "Password confirmation", with: "49er"
        click_button "Create User"
        expect(page).to have_content("Login")
        #create account end
        visit login_path
        expect(page).to have_content("Login")
        fill_in "Email", with: "email@uncc.edu"
        fill_in "Password", with: "49er"
        click_button "Log In"
        expect(page).to have_content("Upcoming Events")
    end
end