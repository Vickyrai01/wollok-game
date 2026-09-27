import wollok.game.*
object llave{
    var property position = game.at(15, 8)

    method image() =  "llave.png"
    
    method chocarCon(personaje) {
      personaje.conseguirLlave()
      game.say(self, "conseguiste una llave!")
      position = game.at(17, 18)
    }

    method resetearse(){
      position = game.at(15, 8)
    }

}
