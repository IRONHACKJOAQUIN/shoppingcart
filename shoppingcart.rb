#Ejercicio Shopping Cart.


#Clase Carro
class CarritoCompra 
	def initialize 
		#@dia_compra = [L,M,X,J,V,S]
		#@articulos = [Articulo] #array de articulos que tendremos en nuestro carro

		@lineas = []
	end

	def add_linea(linea)
		@items.push(item)
	end

	def revisioncompra
		importe_total = 0
		@items.each do |item|
		importe_total += item.precio
	end
	#puts "El importe total de su compra: " importe_total

end



#carro01 = CarritoCompra.new [bananas, 1, "L"]  #Con esto seria suficiente precio, dia compra





class Articulo
	#dando visibilidad desde fuera
	attr_reader :descripcion, :precio

	def initialize(descripcion, precio)
		@descripcion = descripcion
		@precio = precio 
		@familia = "NA"

	end
	#funcion que devuelve el precio. 
	def precio
		@precio
	end

	def describe_articulo
		puts "El articulo #{@descripcion} tiene un precio de #{@precio} . Es de la Familia #{@familia} "
	end
	

	#end
end

class ArticuloHogar <Articulo 

	def initialize (descripcion, precio)
	@descripcion = descripcion
	@precio = precio
	@familia = "Hogar" 
	end

	def precio
		if @precio >100
			@precio = @precio +(@precio * 0.05)
			@precio 
		else
			@precio
	end
end

class ArticuloFruteria <Articulo
	def initialize (descripcion, precio)
	@descripcion = descripcion
	@precio = precio
	@familia = "Frutas"
	#@diaventa = Date.today  tendre que pasar a string?
	end

	def precio
		require 'date'
		hoy = Date.today
		if hoy.saturday? || today.sunday?
			@precio = precio -(precio *0.10)
			@precio 
		else 
			@precio 
		end	
	end

	def diaquesevende
		puts "El articulo #{@descripcion} se ha vendido en dia#{@diaventa}"
	end
end

end

#Creando los articulos segun el ejercicios . despues probar metiendo los articulos en un array. 

lista = 
[
(bananasl = ArticuloFruteria.new "Bananas", 10),
(orangel = ArticuloFruteria.new "Orange Juice", 10),
(ricel = ArticuloFruteria.new "Rice", 1),
(vaccuml = ArticuloHogar.new "Vaccum Cleaner", 150),
(anchoviesl = Articulo.new "Anchoas of Cantabric", 2)
]


bananas = ArticuloFruteria.new "Bananas", 10
orange = ArticuloFruteria.new "Orange Juice", 10
rice = ArticuloFruteria.new "Rice", 1
vaccum = ArticuloHogar.new "Vaccum Cleaner", 150
anchovies = Articulo.new "Anchoas of Cantabric", 2

platanodomingo = ArticuloFruteria.new "Platano Domingo", 12
platanodomingo.diaquesevende


carro01 = CarritoCompra.new
carro01.add_linea(bananas)
carro01.add_linea(orange)
carro01.add_linea(vaccum)
carro01.revisioncompra


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

end
