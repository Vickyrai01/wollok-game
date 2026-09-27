import wollok.game.*

object heroe {

    var position = game.at(2, 4)
    var posicionAnterior = game.at(2, 4)
    var property tieneLaLlave = false

    method image() = "heroe.png"

    method position() = position 

    method position(nuevaPosicion) {
        posicionAnterior = position
        position = nuevaPosicion
    }

    method retroceder(){
        position = posicionAnterior
    }

    method conseguirLlave() {
        tieneLaLlave = true
    }

    method resetearse(){
        position = game.at(2, 4)
        tieneLaLlave = false
    }

}
