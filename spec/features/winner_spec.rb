require_relative 'web_helpers'

feature "Winner page" do
  scenario "displays the winner (Human)" do
    allow(Kernel).to receive(:rand).and_return(2)
    from_welcome_to_winner
    expect(page).to have_content "And the winner is Dave"
  end

  scenario "displays the winner (AI)" do
    allow(Kernel).to receive(:rand).and_return(1)
    from_welcome_to_winner
    expect(page).to have_content "And the winner is RPSbot"
  end
end
