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
    @lista.push_start(@node)
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
      expect(@lista.Head_).not_to be nil
    end
    it "Debe de tener un Data_ (Head_)" do
      expect(@lista.Head_.Data_).not_to be nil
    end
    it "debe de tener una cantidad de elementos" do
      expect(@lista.Size_).not_to be nil
    end
    
    it "Se debe de poder añadir un elemento por el principio" do
      @lista.push_start(@node)
      expect(@lista.Size_).to eq(2)
    end
    
    it "Se pueden recorrer todos los elementos de la lista (con el each sobrecargado)" do
      @aux = @Head_
      while(@aux.Next_ != nil)
        puts @aux.Data_.Name_
        @aux = @aux.Next_
      end
      
     # @lista.each do |elem_lista|
      #  puts elem_lista.Data_.Name_
      #end
    end
    it "Se debe de poder añadir un elemento por el final" do
      
    end
    
    it "Se debe de poder sustraer un elemento del principio" do
      
    end
    
    it "Se debe de poder sustraer un elemento del final" do
      
    end
  end
  
  
end