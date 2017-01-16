require "spec_helper"

describe "Practica" do
  before(:all) do
    node = Node.new()
    lista = Lista.new()
  end
  
  describe "Node" do
    it "Debe de tener un next" do
      expect(@node.Next_).not_to be nil
    end
    
    it "Debe de tener un Dato" do
      expect(@node.Data_).not_to be nil
    end
  end
  
  
end