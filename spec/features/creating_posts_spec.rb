require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a job' do

    # visit the root page
    visit '/'
    # click on a button to create a new post
    click_link 'New Post'
    attach_file('Image', "spec/files/images/coffee.jpg")
    # fill out the bits of the form that we need
    fill_in 'Caption', with: 'nom nom nom #coffeetime'
    # click on the submit button
    click_button 'Create Post'
    # expect the page that we're sent to  to have a specific text
    expect(page).to have_content('#coffeetime')
    # expect the page to contain our photogram_dev
    expect(page).to have_css("img[src*='coffee.jpg']")
  end
end
