#Ejercicio Shopping Cart.


#Clase Carro
class CarritoCompra 
	def initialize 
		@dia_compra = [L,M,X,J,V,S]
		@articulos = [Articulo] #array de articulos que tendremos en nuestro carro
	end

end

#compra01 = CarritoCompra.new "L", bananas, orange,





class Articulo
	#dando visibilidad desde fuera
	attr_reader :descripcion, :precio

	def initialize(descripcion, precio)
		@descripcion = descripcion
		@precio = precio 
		@familia = "NA"

	end

	def describe_articulo
		puts "El articulo #{@descripcion} tiene un precio de #{@precio} . Es de la Familia #{@familia} "
	end
	#def precio

	#end
end

class ArticuloHogar <Articulo 

	def initialize (descripcion, precio)
	@descripcion = descripcion
	@precio = precio
	@familia = "Hogar" 
	end
end

class ArticuloFruteria <Articulo
	def initialize (descripcion, precio)
	@descripcion = descripcion
	@precio = precio
	@familia = "Frutas"

	#@familia = "Frutas"
	#@familia = familia
	end

	

end


#Creando los articulos segun el ejercicios . despues probar metiendo los articulos en un array. 

lista = 
[

(bananas = ArticuloFruteria.new "Bananas", 10),
(orange = ArticuloFruteria.new "Orange Juice", 10),
(rice = ArticuloFruteria.new "Rice", 1),
(vaccum = ArticuloHogar.new "Vaccum Cleaner", 150),
(anchovies = Articulo.new "Anchoas of Cantabric", 2)


]


bananas = ArticuloFruteria.new "Bananas", 10
orange = ArticuloFruteria.new "Orange Juice", 10
rice = ArticuloFruteria.new "Rice", 1
vaccum = ArticuloHogar.new "Vaccum Cleaner", 150
anchovies = Articulo.new "Anchoas of Cantabric", 2


#bananas.describe_articulo
#aspirador.describe_articulo
#puts lista[1].describe_articulo
puts "Total Articulos a dados de alta #{lista.length}"
i=0
while i <lista.length
	lista[i].describe_articulo
	i +=1
end


#haciendo operaciones de pruebas
=begin 
ref1 = Articulo.new "Martillo Bellota", 15, "Hogar" 
ref2 = ArticuloHogar.new "Bote Fairy", 25, "Hogar"
ref3 = ArticuloFruteria.new "Cereza", 1, "Frutas"

ref1.describe_articulo
ref2.describe_articulo  #observa que coge el metodo describe articulo de su propia clase esto es sobreescritura de metodo? 
ref3.describe_articulo  # aqui igual con la fruta 

=end 



