import cervezas.*
class Carpa {
	var limite =  50
	var tieneBandaDeMusica =  false
	var property marca
	var personasEnLaCarpa = []
	
	method cantidadDeGenteAdentro(){return personasEnLaCarpa.size()}
	method ingreso(persona){personasEnLaCarpa.add(persona)}
	method dejaIngresar(persona){return self.hayLugar() and  not persona.estaEbria()}
	method hayLugar(){return self.cantidadDeGenteAdentro() < limite}
	method tomarJarra(persona,capacidad){
		if (not personasEnLaCarpa.contains(persona)){self.error("No estás en la carpa")}
		const nuevaJarra =  new Jarra (marca = self.marca (), capacidadDeLitros = capacidad)
		persona.recibirJarra (nuevaJarra)
	}
}