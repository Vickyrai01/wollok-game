import wollok.game.*

object reset{

    var property position = game.at(4, 15)
    
    method chocarCon(personaje){

        game.say(self, "Terminaste!!!!")
        personaje.retroceder()
        game.allVisuals().forEach({objeto => objeto.resetearse()})

    }

    method resetearse(){}
}
