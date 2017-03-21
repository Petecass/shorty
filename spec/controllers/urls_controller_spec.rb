require 'rails_helper'

RSpec.describe UrlsController, type: :controller do
  let(:valid_attributes) { attributes_for(:url) }
  let(:invalid_attributes) { attributes_for(:url, full_url: '') }

  describe 'GET #index' do
    it 'assigns all urls as @urls' do
      url = Url.create! valid_attributes
      get :index, params: {}
      expect(assigns(:urls)).to eq([url])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested url as @url' do
      url = Url.create! valid_attributes
      get :show, params: { id: url.to_param }
      expect(assigns(:url)).to eq(url)
    end
  end

  describe 'GET #new' do
    it 'assigns a new url as @url' do
      get :new, params: {}
      expect(assigns(:url)).to be_a_new(Url)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Url' do
        expect {
          post :create, params: { url: valid_attributes }
        }.to change(Url, :count).by(1)
      end

      it 'assigns a newly created url as @url' do
        post :create, params: { url: valid_attributes }
        expect(assigns(:url)).to be_a(Url)
        expect(assigns(:url)).to be_persisted
      end

      it 'redirects to the created url' do
        post :create, params: { url: valid_attributes }
        expect(response).to redirect_to(Url.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved url as @url' do
        post :create, params: { url: invalid_attributes }
        expect(assigns(:url)).to be_a_new(Url)
      end

      it 're-renders the "new" template' do
        post :create, params: { url: invalid_attributes }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested url' do
      url = Url.create! valid_attributes
      expect {
        delete :destroy, params: { id: url.to_param }
      }.to change(Url, :count).by(-1)
    end

    it 'redirects to the urls list' do
      url = Url.create! valid_attributes
      delete :destroy, params: { id: url.to_param }
      expect(response).to redirect_to(urls_url)
    end
  end
end
