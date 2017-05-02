feature 'Testing infrastructure' do

  scenario 'homepage' do
    visit('/')
    expect(page).to have_button('Register')
  end

  scenario 'Test to log in' do
    visit('/')
    fill_in('player', with: 'Alex')
    click_button('Register')
    expect(page).to have_content('Alex')
  end

end
