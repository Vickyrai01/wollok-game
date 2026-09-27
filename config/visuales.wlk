import wollok.game.*

import src.puerta.puerta
import src.llave.llave
import src.heroe.heroe
import config.reset.reset

object visuales{

    method configurar() {
        game.addVisual(puerta)
        game.addVisual(llave)
        game.addVisualCharacter(heroe) 
        game.addVisual(reset)
    }

}
