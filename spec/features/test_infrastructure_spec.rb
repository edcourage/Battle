

feature "Battle" do
  scenario "does page return Hello Battle!" do
    visit("/")
    expect(page).to have_text("Hello Battle!")
  end
end
