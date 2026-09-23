import wollok.game.*
object puerta{
    
    var property position = game.at(4, 14) 
    
    var abierta = false
    
    method image() = if (abierta) "puerta abierta.png" else "puerta.png"

    method chocarCon(personaje) {

        if (!personaje.tieneLaLlave()){
            personaje.retroceder()
            game.say(self, "La puerta esta cerrada!")
        }
        else{
            abierta = true
        }
        
    }

    method resetearse(){
        position = game.at(4, 14)
        abierta = false
    }

}
