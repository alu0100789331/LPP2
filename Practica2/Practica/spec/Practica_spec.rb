require "spec_helper"


describe "Practica" do
  
  before(:all) do
    @plato_prueba = Plato.new()
    @menu_prueba = Menu.new()
  end
  
  
  
  describe "Comidas" do
    it "Se puede construir un obejto" do
      expect(@plato_prueba).to_not be nil
    end
  end
  
  describe "Menu" do
    it "Se puede construir un objeto" do
      expect(@menu_prueba).to_not be nil
    end
  end
  
  it "does something useful" do
    expect(false).to eq(true)
  end
  
end
