

feature "Local output tests" do



  context "name - forms" do

    scenario "if you input your names into the forms
    will it print them to page" do
      visit("/")
      fill_in :player_1, with: "Ed"
      fill_in :player_2, with: "Topher"

      click_on 'Submit'

      expect(page).to have_text("Ed vs Topher")


    end


  end


end
