require 'rails_helper'

RSpec.describe 'create articles', type: :system do

    let(:user) {FactoryBot.create(:user) }
    before do
        login_as(user)
    end
  scenario 'empty title and url' do
    visit new_article_path
    click_button 'Create Article'

    # The page should show error message 'Title can't be blank'
    expect(page).to have_content("Title can't be blank")

    # No articles record is created
    expect(Article.count).to eq(0)
  end
  
  # happy path scenario block
  scenario 'valid title and url' do
    visit new_article_path
    # fill in text fields with specified string
    fill_in 'article_title', with: 'RubyYagi'
    fill_in 'article_body', with: 'https://rubyyagi.com'
    click_button 'Create Article'
    
    # The page should show success message

    # 1 new articles record is created
    expect(Article.count).to eq(1)
    
    # Optionally, you can check the latest record data
    expect(Article.last.title).to eq('RubyYagi')
  end

    


















end