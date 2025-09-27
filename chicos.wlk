import huevosDePascua.*

object ana {
    const huevosComidos = []
    method comer(unHuevo){
        huevosComidos.add(unHuevo)
    }
    method estaEnfermo() {return self.consumioMasDe5000() || self.sonsumioUnChocolateBlanco()}
    method consumioMasDe5000() {return huevosComidos.sum({h => h.calorias()}) > 5000}
    method sonsumioUnChocolateBlanco() {return huevosComidos.any({h => h.esDeChocolateBlanco()})}
}
object jose {
    var ultimoHuevoComido = huevoMixto
    method comer(unHuevo) {
      ultimoHuevoComido = unHuevo
    }
    method estaEnfermo(){return ultimoHuevoComido.EsDeChocolateAmargo()} 
}
object tito {
    method comer(unHuevo){ }
    method estaEnfermo(){return false} 
}
