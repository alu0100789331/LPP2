require "spec_helper"


describe "Practica" do
  
  before(:all) do
    @Menu = Menu.new()
    
    @Plato = Plato.new("Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharon","200 gr",70,20,150)
    @Plato1 = Plato.new("escalope de ternera","1 bistec mediano","100 gr",70,20,150)
    @Plato2 = Plato.new("Ensalada basica con zanahoria rallada","guarnion","120 gr",70,20,150)
    @Plato3 = Plato.new("Mandarina","1 grande","20 gr",70,20,150)
    @Plato4 = Plato.new("Pan de trigo integral","1 rodaja","20 gr",70,20,150)
  end
  
  describe "Plato" do
    it "Se puede construir un objeto sin parametros" do
      @aux = Plato.new()
      expect(@aux).to_not be nil
      expect(@aux.Name_).to eq("Plato Vacio")
    end
    it "Se puede construir un objeto con parametros" do
      @aux = Plato.new("Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharon","200 gr",70,20,150)
      expect(@aux).to_not be nil
      expect(@aux.Name_).to eq("Macarrones con salsa de tomate y queso parmesano")
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
    it "Se puede construir un objeto sin parametros" do
      @aux = Menu.new()
      expect(@aux).to_not be nil
      expect(@aux.Name_).to eq("Menu Vacio")
    end
    
    it "Se puede construir un objeto con parametros" do
      @aux = Menu.new("Almuerzo",[@Plato,@Plato1,@Plato2,@Plato3,@Plato4])
      expect(@aux).to_not be nil
      expect(@aux.Name_).to eq("Almuerzo")
    end
    
    it "Se puede obtener el nombre del Menu" do
      expect(@Menu.Name_).to eq("Menu Vacio")
    end
  end
end
