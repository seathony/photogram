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

  scenario 'needs an image to create a post' do
    # visit root page
    visit '/'
    # click the 'New Post' links
    click_link 'New Post'
    # fill in the caption field (without wouching the image field)
    fill_in 'Caption', with: 'nom nom nom #coffeetime'
    # click the 'Create Post' button
    click_button 'Create Post'
    # expect the page to say, "Halt, you fiend! You need an image to post here!"
    expect(page).to have_content('Halt, you fiend! You need an image to post here!')
  end
end
