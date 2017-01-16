class Plato
    attr_accessor :Name_, :Slice_, :Vol_, :Fat_, :Protein_, :Hydrates_
    def initialize(*args)
        if(args.count()==0)
            @Name_="Plato Vacio"
            @Slice_ = 0
            @Vol_ = 0
            @Fat_ = 0
            @Protein_ = 0
            @Hydrates_ = 0
        elsif(args.count()==6)
            @Name_ = args[0]
            @Slice_ = args[1]
            @Vol_ = args[2]
            @Fat_ = args[3]
            @Protein_ = args[4]
            @Hydrates_ = args[5]
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
    attr_accessor :Name_, :Platos_, :Total_protein_, :Total_hydrate_, :Total_fat_, :Total_VCT_
    def initialize(*args)
        if(args.count()==0)
            @Name_ = "Menu Vacio"
            @Platos_ = []
            
            @Total_fat_ = 0
            @Total_hydrate_ = 0
            @Total_protein_ = 0
            @Total_VCT_ = 0
        elsif(args.count()==2)
            @Name_ = args[0]
            @Platos_ = args[1]
            
            @Total_fat_ = 0.0
            @Total_hydrate_ = 0.0
            @Total_protein_ = 0.0
            @Total_VCT_ = 0.0
            
            @Platos_.each do |plato|                                                                         #Recorremos la lista de platos para calcular los valores del menu
                @Total_fat_ = @Total_fat_ + plato.Fat_                                                       #Calculamos el total de grasa
                @Total_hydrate_ = @Total_hydrate_ + plato.Hydrates_                                          #   """""""""""""""""""hidratos
                @Total_protein_ = @Total_protein_ + plato.Protein_                                           #   """""""""""""""""""proteina
            end
            
            @Total_VCT_ = (@Total_fat_ + @Total_hydrate_ + @Total_protein_)                                  #Calculamos el total de todo
            
            @Total_fat_ = (@Total_fat_/@Total_VCT_).to_f*100
            @Total_hydrate_ = (@Total_hydrate_/@Total_VCT_)*100
            @Total_protein_ = (@Total_protein_/@Total_VCT_)*100
            
            puts @Total_fat_

        else
           "Error en el constructor"
        end
    end
    
    
end