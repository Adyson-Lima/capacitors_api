require 'rails_helper'

RSpec.describe Api::V1::CapacitorsController, type: :controller do

  before {@capacitor = Capacitor.create(description: "eletrolitic", price: "20,00")}

  describe 'GET /api/v1/capacitors' do
    it 'Consegue listar todos os capacitors e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/capacitors/id' do
    it 'Consegue retornar um capacitor especifico e status 200?' do
      get :show,params: {id: @capacitor.id}
      expect(response.body).to include_json(id: @capacitor.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/capacitors' do
    it 'Consegue criar um capacitor e retornar status 201?' do
      post :create, params: {capacitor: {description: "ceramico", price: "0,25"}, format: :json}
      expect(response.body).to include_json(description: "ceramico")
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/capacitors/id' do
    it 'Consegue atualizar um capacitor e retornar status 200?' do
      capacitor = Capacitor.last
      patch :update, params: {capacitor: {description: "eletrolitico", price: "1,00"}, id: capacitor.id}
      expect(response.body).to include_json(description: "eletrolitico")
      expect(response).to have_http_status(200)
    end
  end

  describe 'DELETE /api/v1/capacitors/id' do
    it 'Consegue excluir um capacitor e retornar status 204?' do
      capacitor = Capacitor.last
      delete :destroy, params: {id: capacitor.id}
      expect(Capacitor.all).not_to include(capacitor)
      expect(response).to have_http_status(204)
    end
  end

end
