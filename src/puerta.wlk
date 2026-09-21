import wollok.game.*
object puerta{
    var property position = game.at(4, 14) 
    
    method image() = "puerta.png" 

    method chocarCon(personaje) {

        if (!personaje.tieneLaLlave()){
            personaje.retroceder()
            game.say(self, "La puerta esta cerrada!")
        }
        else{
            game.removeVisual(self)
        }
        
    }
}
