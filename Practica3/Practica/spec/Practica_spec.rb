require "spec_helper"

describe "Practica" do
  before(:all) do
    #Practica anterior
    @Plato = Plato.new("Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharon","200 gr",70,20,150)
    @Plato1 = Plato.new("escalope de ternera","1 bistec mediano","100 gr",70,20,150)
    @Plato2 = Plato.new("Ensalada basica con zanahoria rallada","guarnion","120 gr",70,20,150)
    @Plato3 = Plato.new("Mandarina","1 grande","20 gr",70,20,150)
    @Plato4 = Plato.new("Pan de trigo integral","1 rodaja","20 gr",70,20,150)
    @Menu = Menu.new("Almuerzo",[@Plato,@Plato1,@Plato2,@Plato3,@Plato4])
    
    #Practica nueva
    @node = Node.new(@Menu)
    @lista = Lista.new()
  end
  
  describe "Node" do
    it "Debe de tener un next (en nil hasta que la clase Lista lo trate)" do
      expect(@node.Next_).to be nil
    end
    
    it "Debe de tener un Dato" do
      expect(@node.Data_).not_to be nil
    end
  end
  
  describe "Lista simplemente enlazada" do
    it "Debe de tener un HEAD" do
      
    end
    it "debe de tener una cantidad de elementos" do
      
    end
    
    it "Se debe de poder añadir un elemento por el final" do
      
    end
    
    it "Se debe de poder añadir un elemento por el principio" do
      
    end
    
    it "Se debe de poder sustraer un elemento del principio" do
      
    end
    
    it "Se debe de poder sustraer un elemento del final" do
      
    end
  end
  
  
end