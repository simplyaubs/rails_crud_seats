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

  scenario 'User can update a seat from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a seat'
    fill_in 'Name', with: '36C'
    fill_in 'Location', with: 'Back'
    click_on 'Add seat'
    expect(page).to have_content '36C'
    expect(page).to have_content 'Back'
    click_on '36C'
    expect(page).to have_content '36C'
    expect(page).to have_content 'Back'
    click_on 'Edit'
    fill_in 'Name', with: '5A'
    fill_in 'Location', with: 'Front'
    click_on 'Update seat'
    expect(page).to have_content '5A'
    expect(page).to have_content 'Front'
    expect(page).to_not have_content '36C'
    expect(page).to_not have_content 'Back'
  end

  scenario 'User can delete a seat from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a seat'
    fill_in 'Name', with: '36C'
    fill_in 'Location', with: 'Back'
    click_on 'Add seat'
    expect(page).to have_content '36C'
    expect(page).to have_content 'Back'
    click_on '36C'
    expect(page).to have_content '36C'
    expect(page).to have_content 'Back'
    click_on 'Delete'
    expect(page).to_not have_content '36C'
    expect(page).to_not have_content 'Back'
  end
end