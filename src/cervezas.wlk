class MarcaDeCerveza {
//De cada marca se sabe su contenido de lúpulo.
	var property lupulo 
//También se conoce el país donde se fabrica.
	var property pais
	method graduacion()
}

/*Cada marca de cerveza rubia tiene una graduación distinta.*/
class CervezaRubia inherits MarcaDeCerveza {
	var property graduacion
}
/*Por otro lado, la graduación de una marca de cerveza negra se calcula como el mínimo entre la graduación reglamentaria y el doble de su contenido de lúpulo.
 * La graduación reglamentaria es mundial, o sea que es única para todas las marcas de cerveza negra del mundo; puede cambiar con el tiempo.
*/
class CervezaNegra inherits MarcaDeCerveza {
	override method graduacion(){
		return graduacionReglamentaria.valorMinimo().min(lupulo * 2) }
	}
/*Este  un  metodo que puede cambiar.*/
object graduacionReglamentaria{
	//puede cambiar
	var property valorMinimo = 0
}
/*La cerveza roja se fabrica con procedimientos similares a la de la cerveza negra, pero que concentran más el alcohol.
 *Por lo tanto, la graduación de una marca de cerveza roja se calcula multiplicando el valor que correspondería a una cerveza negra con la misma configuración,
 por 1.25.*/
class CervezaRoja inherits CervezaNegra {
	override method graduacion(){
		return super() * 1.25
	}
}

// En la fiesta, la cerveza se vende en jarras. De cada jarra de cerveza sabemos su capacidad en litros y de qué marca es.
class Jarra {
	var property capacidadDeLitros
	var property marca = "ninguna"
	method contenidoDeAlcohol(marcaDeCerveza) {
		return (capacidadDeLitros * marcaDeCerveza.graduacion())
	}
}