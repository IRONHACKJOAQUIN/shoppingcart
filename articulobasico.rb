

class Articulo
	def initialize(descripcion, precio)
		@descripcion = descripcion
		@precio = precio
		@diaventa = Date.today	
	end

	def muestradatosarticulo
		puts "El nombre del articulo es #{@descripcion} y su precio #{@precio} se vendio en dia #{@diaventa}"
	end

end


class Animal
	def initialize(nombre, peso)
		@nombre = nombre 
		@peso = peso
	end 

	def muestranombre
		puts "El nombre del animal es #{@nombre} y pesa #{@peso}"
	end

end

animal1 = Animal.new "COCODRILO", 2500
animal1.muestranombre

art1 = Articulo.new "MARTILLO", 1500
art1.muestradatosarticulo