require 'rails_helper'
require 'capybara/rspec'
RSpec.describe ArticlesController, type: :controller do
  context 'GET articles controller views' do
    before(:each) do
      @user = User.new(id: '1', name: 'nkiruka').save
      @article = Article.new(id: '1', title: 'Micronaut MeetnGreet', text: 'This is a meet and greet').save
    end

    it 'GET #index' do
      get :index
      expect(response).to be_successful
    end


  end



end

RSpec.describe 'Article Management', type: :feature do
  let(:user) { User.create(id: '1', name: 'nkiruka') }
  let(:event) { Article.create(id: '1', title: 'Micronaut MeetnGreet', text: 'This is a meet and greet') }
  before(:each) do
    visit login_path
    fill_in 'Name', with: 'nkiruka'
    click_button 'Login'
  end
end
