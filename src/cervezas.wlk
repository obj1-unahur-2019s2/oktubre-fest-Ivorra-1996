// En la fiesta, la cerveza se vende en jarras. De cada jarra de cerveza sabemos su capacidad en litros y de qué marca es.
class Jarra {
	var property litros = 0
	var property marca = "ninguna"
	
}

class MarcaDeCerveza {
//De cada marca se sabe su contenido de lúpulo.
	var property lupulo 
//También se conoce el país donde se fabrica.
	var property pais
}


class CervezaRubia inherits MarcaDeCerveza {
	var property graduacion
	
	
}
/*Por otro lado, la graduación de una marca de cerveza negra se calcula como el mínimo entre la graduación reglamentaria y el doble de su contenido de lúpulo.
 * La graduación reglamentaria es mundial, o sea que es única para todas las marcas de cerveza negra del mundo; puede cambiar con el tiempo.
*/
class CervezaNegra inherits MarcaDeCerveza {
	method graduacion(){
		return graduacionReglamentaria.valorMinimo().min(lupulo * 2) }
	}

	

class CervezaRoja inherits CervezaNegra {
	override method graduacion(){
		return super() * 1.25
	}
}

object graduacionReglamentaria{
	//puede cambiar
	var property valorMinimo = 0
}
class Persona{
//De cada persona se sabe su peso.
	var property peso = 0
//las jarras de cerveza que compró hasta el momento
	var cervezas = []
//si le gusta escuchar música tradicional o no.
	var property musica = true
// y su aguante.
	var property aguante = 0
//si esta ebria o no .
	var property estaEbria 
//cuantas cervezas compro.
	method cervezasQueCompro(cerveza){cervezas.add(cerveza)}
// cantidad de alcohol en la persona.
	method cantidadDealcohol(){
		return cervezas.sum({birra => birra.graduacion()})
	}
// si esta ebria o no .
	method ebrio(){
		if(self.cantidadDealcohol() * peso > aguante){estaEbria = true}
		else{estaEbria = false}
	}
/*
 * Además, de cada persona interesará saber qué marcas de cerveza le gustan.
 * Se sabe que a los belgas les gusta solamente la cerveza con más de 4 gramos de lúpulo por litro,
 * a los checos les gustan las cervezas de más de 8 % de graduación (ver abajo qué es la graduación de la cerveza),
 * a los alemanes les gustan todas.
*/
	method legusta(){
		if(/*belgas = a cerveza con más de 4 gramos de lúpulo por litro*/){}
		else if(/*checos= les gustan las cervezas de más de 8 % de graduación */){}
		else(/*los alemanes les gustan todas.*/){}
	}
}



