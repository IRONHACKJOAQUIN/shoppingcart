#Ejercicio Shopping Cart.


#Clase Carro
class CarritoCompra 
	def initialize 
		@dia_compra = [L,M,X,J,V,S]
		@articulos = [ ] #array de articulos que tendremos en nuestro carro
	end

end


class Articulo
	def initialize(descripcion, precio)
		@descripcion = descripcion
		@precio = precio 
	end

	def describe_articulo
		puts "El articulo #{@descripcion} tiene un precio de #{@precio} . Es de la Familia #{@familia} "
	end
	#def precio

	#end
end

class ArticuloHogar <Articulo 

	def initialize (descripcion, precio)
	@familia = "Hogar" 
	end

	
end


class ArticuloFruteria <Articulo
	def intialize (descripcion, precio)
	@familia = "Frutas"
	end

	

end


#Creando los articulos segun el ejercicios 

bananas = ArticuloFruteria.new "Bananas", 10
orange = ArticuloFruteria.new "Orange Juice", 10
rice = ArticuloFruteria.new "Rice", 1
vacumm = ArticuloHogar.new "Vaccum Cleaner", 150
anchovies = Articulo.new "Anchoas of Cantabric", 2

bananas.describe_articulo
vacumm.describe_articulo



#haciendo operaciones de pruebas 
ref1 = Articulo.new "Martillo Bellota", 15
ref2 = ArticuloHogar.new "Bote Fairy", 25
ref3 = ArticuloFruteria.new "Cereza", 1

ref1.describe_articulo
ref2.describe_articulo  #observa que coge el metodo describe articulo de su propia clase esto es sobreescritura de metodo? 
ref3.describe_articulo  # aqui igual con la fruta 



