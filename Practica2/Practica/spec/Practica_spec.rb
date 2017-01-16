require "spec_helper"


describe "Practica" do
  
  before(:all) do
  end
  
  describe "Comidas" do
    it "Se puede construir un objeto sin parametros" do
      @aux = Plato.new()
      expect(@aux).to_not be nil
      expect(@aux.Name_).to eq("Plato Vacio")
    end
    it "Se puede construir un objeto con parametros" do
      @aux = Plato.new("Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharon","200 gr")
      expect(@aux).to_not be nil
    end
  end
  
  describe "Menu" do
    it "Se puede construir un objeto" do
      @aux = Menu.new()
      expect(@aux).to_not be nil
    end
  end
  
end
