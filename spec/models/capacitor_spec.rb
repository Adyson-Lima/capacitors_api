require 'rails_helper'

RSpec.describe Capacitor, type: :model do

  before{ @capacitor = Capacitor.new }

  describe 'Teste de preenchimento dos campos do model Capacitor' do

    it 'description consegue ser preenchido?' do
      @capacitor.description = "tantalo"
      expect(@capacitor.description).to eq("tantalo")
    end

  end

end

