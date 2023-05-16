require "rails_helper"

RSpec.describe "Schools Pages" do 
  describe "schools index" do
    it "shows each school when I vist /schools" do
      School.create!({open_classes: 20, name: "Parkway", accepting_new_students: true})
      School.create! ({open_classes: 20, name: "Elm Grove", accepting_new_students: true})

      visit "/schools"

      expect(page).to have_content("Parkway")
      expect(page).to have_content("Elm Grove")
    end
  end
end