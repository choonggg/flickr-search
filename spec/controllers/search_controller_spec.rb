require 'rails_helper'

RSpec.describe SearchController, type: :controller do
  let(:search_string) { 'batman' }
  let(:search_params) do
    {
      search: search_string
    }
  end
  
  describe 'GET #home' do
    before { get :home }
    
    it { expect(assigns(:form)).to be_a(SearchForm) }
    it { expect(response).to have_http_status :success  }
  end

  describe 'GET #index' do
    context 'with valid params' do
      before { get :index, search_form: search_params }
      
      it { expect(assigns(:form)).to be_a(SearchForm) }
      it { expect(response).to have_http_status :success  }
    end

    context 'with empty params' do
      let(:search_string) { '' }
      before { get :index, search_form: search_params }
      
      it { expect(controller).to redirect_to root_path }
    end
  end

  describe 'GET #show' do
    before { get :show, id: 123321 }
    
    it { expect(assigns(:image)).to be }
    it { expect(response).to have_http_status :success  }
  end
end
