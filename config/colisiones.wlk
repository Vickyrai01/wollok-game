import wollok.game.*
import src.heroe.heroe
object colisiones{

    method configurar(){

        game.onCollideDo(heroe, {elemento => elemento.chocarCon(heroe)})

    }

}
