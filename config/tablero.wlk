import wollok.game.*
import paredesHandler.*

object tablero {

    method configurar(){
        game.cellSize(16)
        game.width(20)
        game.height(20)
        game.boardGround("nivel 1.png")
        paredesHandler.generarParedes()

    }

}
