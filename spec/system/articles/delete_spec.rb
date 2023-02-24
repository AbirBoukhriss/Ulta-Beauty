require 'rails_helper'

RSpec.describe 'create articles', type: :system do

    let(:article) {FactoryBot.create(:article) }
    let(:user) {FactoryBot.create(:user) }

    before do
        login_as(user)
    end

    scenario 'empty title and body' do
            visit article_path(article)
            accept_alert do
                click_on 'Destroy'
            end
            sleep 1.second 

        expect(Article.count).to eq(0)
    end
      
end