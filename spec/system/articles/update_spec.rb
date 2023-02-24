require 'rails_helper'

RSpec.describe 'create articles', type: :system do

    let(:article) {FactoryBot.create(:article) }
    let(:user) {FactoryBot.create(:user) }

    before do
        login_as(user)
    end

    scenario 'update title ' do

        visit edit_article_path(article.id)
        fill_in 'article[title]', with: 'title updated'

        click_button 'Update Article'

        expect(page).to have_content("title updated")
    end

  end
  

