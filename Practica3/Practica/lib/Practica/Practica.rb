class Node          #Comenzaremos con una lista simplemente enlazada
   attr_accessor :Next_ ,:Data_
   
   def initialize(*args)
      if(args.count()==0)
          @Next_ = nil
          @Data_ = nil
      elsif(args.count()==1)
        @Data_ = args[0]
      else
        puts "Error en el constructor" 
      end
   end
end

class Lista
   attr_accessor :Head_, :Size_
    
end