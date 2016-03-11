require 'rails_helper'

RSpec.describe SearchController, type: :controller do
  describe 'GET #home' do
    before { get :home }
    
    it { expect(assigns(:form)).to be_a(SearchForm) }
    it { expect(response).to have_http_status :success  }
  end

  describe 'GET #index' do
    before { get :index }
    
    it { expect(assigns(:form)).to be_a(SearchForm) }
    it { expect(response).to have_http_status :success  }
  end

  describe 'GET #index' do
    before { get :index }
    
    it { expect(assigns(:form)).to be_a(SearchForm) }
    it { expect(response).to have_http_status :success  }
  end
end
