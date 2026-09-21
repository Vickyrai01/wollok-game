import wollok.game.*

import src.puerta.puerta
import src.llave.llave
import src.heroe.heroe

object visuales{

    method configurar() {
        game.addVisualCharacter(heroe)
        game.addVisual(puerta)
        game.addVisual(llave) 
    }

}
