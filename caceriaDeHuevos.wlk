import huevosDePascua.*
import chicos.*

object caceria{
    const huevosEscondidos = []
    const huevosEncontrados = {}
    method iniciarJuego() {
        flor.petalos(7)
        blisterHuevitos.huevitos(14)
        matrioshka.deco(flor)
        matrioshka.interior(blisterHuevitos)
        huevosEncontrados.addAll([matrioshka,huevoRepostero,conejo,huevoMixto])
    }
    method huevosFaltantes(){return huevosEscondidos.size()}
    method cuantosConChocolateBlanco() {return huevosEscondidos.count({ h => h.esDeChocolateBlanco() })}
    method aunNoFueEncontradoUnHuevo(unHuevo){return huevosEncontrados.countains(unHuevo)} 
    method encontrarUnHuevoPor(unChico,unHuevo){
        unChico.comer(unHuevo)
        huevosEscondidos.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }
    method encontrarPrimerHuevo(unChico){
        self.encontrarUnHuevoPor(unChico,huevosEscondidos.first())
    }
    method encontarLosRestantes(unChico){
        huevosEscondidos.forEach({h => self.encontrarUnHuevoPor(unChico, h)})
    } 
    method huevosEncontradosBlancos(){
      return huevosEncontrados.filter({h => h.esDeChocolateBlanco()})
    }
    method huevosNoEncontradosBlancos(){
      return huevosEscondidos.filter({h => h.esDeChocolateBlanco()})
    }
    method encontradoDeMayorCalorias(){
        return huevosEncontrados.max({h => h.calorias()}).calorias()
    }
    method noEncontradoDeMayorCalorias(){
        return huevosEscondidos.max({h => h.calorias()}).calorias()
    }
}

