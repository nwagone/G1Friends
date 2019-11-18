require 'rails_helper.rb'

feature "User creates an account" do
    scenario "User successfully navigates to the sign up page from the home page" do
        visit root_path
        expect(page).to have_content("Sign Up")
        click_link "Sign Up"
        expect(page).to have_content("New User")
        expect(page).to have_field("Email")
        expect(page).to have_field("Password")
        expect(page).to have_field("Password confirmation")
    end
    
    scenario "User successfully creates an account" do
        visit signup_path
        expect(page).to have_content("New User")
        fill_in "Email", with: "email@uncc.edu"
        fill_in "Password", with: "49er"
        fill_in "Password confirmation", with: "49er"
        click_button "Create User"
        expect(page).to have_content("Login")
    end
end