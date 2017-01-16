class Node          #Comenzaremos con una lista simplemente enlazada
   attr_accessor :Next_ ,:Data_
   
   def initialize(*args)
      if(args.count()==0)                       #constructor sobrecargado
          @Next_ = nil
          @Data_ = nil
      elsif(args.count()==1)                    #constructor sobrecargado
        @Data_ = args[0]
      else
        puts "Error en el constructor" 
      end
   end
   
   
end

class Lista
   attr_accessor :Head_, :Size_
   def initialize()                             #constructor
      @Head_ = nil                              #no lo sobrecargamos
      @Size_ = 0
   end
   
   def each
       aux = @Head_
       if aux != nil
           yield aux
           aux = aux.Next_
       end
   end
   
   def push_start(aux)                          #push start
    if @Head_==nil                              #si es el 1 nodo de la lista
        aux.Next_ = nil
        
    else                                        #si no es el primer nodo de la lista
        aux.Next_ = @Head_
    end
    @Head_ = aux
    @Size_ = @Size_ + 1
   end
   
   def push_end(aux)                            #push end
   if @Head_ == nil                             #si es el 1 nodo de la lista
       aux = @Head_
   else                                         #si no es el primer nodo de la lista
       #Como recorremos esto? Sin el @Tail_
   end
    aux.Next_ = nil
    @Size_ = @Size_ + 1
   end
end