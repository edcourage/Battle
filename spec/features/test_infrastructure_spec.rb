

feature "Local output tests" do

before :each do
  visit("/")
  fill_in :player_1, with: "Ed"
  fill_in :player_2, with: "Topher"
  click_on 'Submit'
end


context "display" do
  scenario "if you input your names into the forms
  will it print them to page" do
    expect(page).to have_text("Ed vs Topher")
  end

  scenario "player 2 HP" do
    expect(page).to have_text("Topher: 100HP")
  end
end

end
