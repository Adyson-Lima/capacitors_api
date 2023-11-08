require 'rails_helper'

RSpec.describe Capacitor, type: :model do

  before{ @capacitor = Capacitor.new }

  describe 'Teste de preenchimento dos campos do model Capacitor' do

    it 'description consegue ser preenchido?' do
      @capacitor.description = "tantalo"
      expect(@capacitor.description).to eq("tantalo")
    end

    it 'price consegue ser preenchido?' do
      @capacitor.price = "5,90"
      expect(@capacitor.price).to eq("5,90")
    end

  end

  describe 'Teste de validcao do model Capacitor' do

    it 'Capacitor valido com campos obrigatorios preenchidos?' do
      @capacitor.description = "eletrolitico"
      @capacitor.price = "6,00"
      expect(@capacitor).to be_valid
    end

    it 'Capacitor invalido com campos obrigatorios não preenchidos?' do
      capacitor = Capacitor.new
      expect(capacitor).to be_valid
    end

  end

end

