import wollok.game.*
import src.pared.*
object paredesHandler{

    var altura = 0
    var ancho = 0
    const posicionesParedes = []

    method generarParedes(){

        altura = game.height() - 1
        ancho = game.width() - 1
        posicionesParedes.clear()

        //paredes verticales
        self.cargarPosicionDeParedesVerticales(3, 14, 1)
        self.cargarPosicionDeParedesVerticales(6, 8, 6)
        self.cargarPosicionDeParedesVerticales(11, 12, 7)
        self.cargarPosicionDeParedesVerticales(10, 12, 9)
        self.cargarPosicionDeParedesVerticales(6, 7, 9)
        self.cargarPosicionDeParedesVerticales(6, 9, ancho - 2)
        self.cargarPosicionDeParedesVerticales(4, 5, ancho - 1)

        //paredes horizontales
        self.cargarPosicionDeParedesHorizontales(1, ancho -2, 3)
        self.cargarPosicionDeParedesHorizontales(2, 6, 6)
        self.cargarPosicionDeParedesHorizontales(9, 17, 6)
        self.cargarPosicionDeParedesHorizontales(2, 6, 8)
        self.cargarPosicionDeParedesHorizontales(9, 16, 10)
        self.cargarPosicionDeParedesHorizontales(1, 3, altura - 5)
        self.cargarPosicionDeParedesHorizontales(5, 6, altura - 5)
        self.cargarPosicionDeParedesHorizontales(7, 8, 13)

        //Agregar paredes invisibles al mapa
        posicionesParedes.forEach({posicionPared => self.dibujarPared(new Pared(position = posicionPared))})

    }

    method dibujarPared(pared) {
		game.addVisual(pared)
	}

    method cargarPosicionDeParedesVerticales(inicio, fin, posicionEnX){
        (inicio .. fin).forEach({posicionEnY => posicionesParedes.add(new Position(x = posicionEnX, y = posicionEnY))})
    }

    method cargarPosicionDeParedesHorizontales(inicio, fin, posicionEnY){
        (inicio .. fin).forEach({posicionEnX => posicionesParedes.add(new Position(x = posicionEnX, y = posicionEnY))})
    }
    
}
