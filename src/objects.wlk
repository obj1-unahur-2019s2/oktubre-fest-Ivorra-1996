class Persona{
//De cada persona se sabe su peso.
	var property peso = 0
//las jarras de cerveza que compró hasta el momento
	var cervezas = []
//si le gusta escuchar música tradicional o no.
	var property musica
// y su aguante.
	var property aguante = 0
//si esta ebria o no .
	var property estaEbria 
//cuantas cervezas compro.
// Le gusta escuhar musica.
	method leGustaLaMusica(){return musica}
// Cantidad de Cervezas que compro.
	method cervezasQueCompro(cerveza){cervezas.add(cerveza)}
// cantidad de alcohol en la persona.
	method cantidadDealcohol(){return cervezas.sum({birra => birra.graduacion()})}
// si esta ebria o no .
	method ebrio(){
		if(self.cantidadDealcohol() * peso > aguante){estaEbria = true}
		else{estaEbria = false}
		return estaEbria
	}
	method marcaDeCervezaQueLegusta(marcaDeCerveza)
}
/* Además, de cada persona interesará saber qué marcas de cerveza le gustan.
 * Se sabe que a los belgas les gusta solamente la cerveza con más de 4 gramos de lúpulo por litro,
 * a los checos les gustan las cervezas de más de 8 % de graduación (ver abajo qué es la graduación de la cerveza),
 * a los alemanes les gustan todas.*/
 class Belga inherits Persona{
 	override method marcaDeCervezaQueLegusta(marcaDeCerveza){
 		return marcaDeCerveza.lupulo() > 4
 	}
 }
 class Checho inherits Persona{
 	override method marcaDeCervezaQueLegusta(marcaDeCerveza){
 		return marcaDeCerveza.graduacion() > 8
 	}
 }
 class Alemane inherits Persona{
 	override method marcaDeCervezaQueLegusta(marcaDeCerveza){return true}
 }