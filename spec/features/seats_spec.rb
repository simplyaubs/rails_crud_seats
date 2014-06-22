require 'spec_helper'

feature 'CRUD bars' do
  scenario 'User can create a list of seats' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a seat'
    fill_in 'Name', with: '36C'
    fill_in 'Location', with: 'Back'
    click_on 'Add seat'
    expect(page).to have_content '36C'
    expect(page).to have_content 'Back'
  end
end