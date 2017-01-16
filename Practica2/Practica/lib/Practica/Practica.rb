class Plato
    attr_accessor :Name_, :Slice_, :Vol_
    def initialize(*args)
        if(args.count()==0)
            @Name_="Plato Vacio"
            @Slice_ = 0
            @Vol_ = 0
        elsif(args.count()==3)
            @Name_ = args[0]
            @Slice_ = args[1]
            @Vol_ = args[2]
        else
           "Error en el constructor"
        end        
    end
    
    def get_name()
        @Name_
    end
    
    def get_Slice()
        @Slice_
    end
    
    def get_Vol()
        @Vol_
    end
end


class Menu
    attr_accessor
    def initialize(*args)
        if(args.count()==0)
            
        elsif(args.count())
        
        else
           "Error en el constructor"
        end
    end
end