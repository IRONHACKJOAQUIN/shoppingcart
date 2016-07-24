#ejercicio de venta de un producto base y le añadimos compuestos 

class Batido
	def initialize
		@precio_base = 3
		@ingredientes = []
	end

	def add_ingrediente(ingrediente)
		@ingredientes.push(ingrediente) #va añadiendo ingredientes al arreglo de la base 
	end

	def precio_total_batido
		total_precio_batido = @precio_base
		@ingredientes.each do |ingrediente|
		total_precio_batido += ingrediente.precio_ingrediente
	end
		#retorna el precio total 
		puts "El precio total de su batido es #{total_precio_batido}"


end


class Ingrediente
	#para dar visiblidad desde fuera de la clase 
	attr_reader :nombre_ingrediente, :precio_ingrediente

	def initialize(nombreingrediente, precioingrediente)
		@nombre_ingrediente = nombre_ingrediente
		@precio_ingrediente = precio_ingrediente
	end
end

end




batido_ironhack = Batido.new()
ingre1 = Ingrediente.new("Banana", 5)
ingre2 = Ingrediente.new("Trozitos Chocolate", 3)

batido_ironhack.add_ingrediente(i1)
batido_ironhack.add_ingrediente(i2)

puts batido_ironhack.precio_total_batido

