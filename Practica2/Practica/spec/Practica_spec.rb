require "spec_helper"


describe "Practica" do
  
  before(:all) do
    @Plato = Plato.new("Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharon","200 gr")
  end
  
  describe "Plato" do
    it "Se puede construir un objeto sin parametros" do
      @aux = Plato.new()
      expect(@aux).to_not be nil
      expect(@aux.Name_).to eq("Plato Vacio")
    end
    it "Se puede construir un objeto con parametros" do
      @aux = Plato.new("Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharon","200 gr")
      expect(@aux).to_not be nil
    end
    it "Se puede obtener el nombre del plato" do
      expect(@Plato.get_name()).to eq("Macarrones con salsa de tomate y queso parmesano")
    end
    it "Se puede obtener la porcion recomendada" do
      expect(@Plato.get_Slice()).to eq("1 1/2 cucharon")
    end
    it "Se puede obtener la ingesta en gramos" do
      expect(@Plato.get_Vol()).to eq("200 gr")
    end
  end
  
  describe "Menu" do
    it "Se puede construir un objeto" do
      @aux = Menu.new()
      expect(@aux).to_not be nil
    end
  end
  
end
