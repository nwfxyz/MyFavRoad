require 'rails_helper'

RSpec.feature "HomePages", type: :feature do
    
    it "should visit homepage successfully" do
        visit "/"
        expect(page).to have_http_status(:success)
        expect(page).to have_text("Welcome to Todo List app")
    end
    
end
