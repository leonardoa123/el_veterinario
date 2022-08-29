class Pet < ApplicationRecord
    has_many :pet_histories
    belongs_to :client
    #pertenece a un cliente

    #para contar la cantidad de historiales de una mascota
    def history_count
        pet_histories.count
    end
    
    #AVERAGE ES UN MÉTODO PARA SACAR PROMEDIOS
    #Para hacer el promedio del peso
    def avg_weight
        pet_histories.average(:weight)
    end

    #Para el promedio del tamaño
    def avg_height
        pet_histories.average(:height)
    end

    #Para obtener el peso máximo del historia
    def max_weight
        pet_histories.pluck(:weight)
    end

    #PLUCK es para que te muestre la info en arreglos, en este caso el peso máximo
    def pluck_weight
        pet_histories.pluck(:weight)
    end

    #Para relacionar al dueño con la mascota
    def owner_name
        client&.name
    end

end
