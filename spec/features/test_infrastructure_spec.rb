

feature "Local output tests" do



context "display" do
  scenario "if you input your names into the forms
  will it print them to page" do
    sign_in_and_play
    expect(page).to have_text("Ed vs Topher")
  end

  scenario "player 2 HP" do
    sign_in_and_play
    expect(page).to have_text("Topher: 100HP")
  end
end

end
