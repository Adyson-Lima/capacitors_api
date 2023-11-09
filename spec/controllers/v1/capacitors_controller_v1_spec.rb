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

end
