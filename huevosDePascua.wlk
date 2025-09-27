object huevoRepostero {
    method calorias() = 750
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
}
object huevoMixto {
    method caloriasChocoBlanco() = 400
    method caloriasChocoLeche() = 500
    method calorias() = self.caloriasChocoBlanco() + self.caloriasChocoLeche()
    method EsDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
}
object conejo {
    var property peso = 50
    method calorias() = peso * 10
    method esDeChocolateBlanco() = false
    method esDeChocolateAmargo() = true
}
object blisterHuevitos {
    var property huevitos = 3
    method calorias() = huevitos * 100 + huevitos.div(5) * 150
    method EsDeChocolateBlanco() = huevitos >= 5
    method esDeChocolateAmargo() = false
}
object flor{
    var property petalos = 7
    method calorias() = petalos * 100 
}
object arbol{
    method calorias() = 150 
}
object matrioshka {
    var property interior = blisterHuevitos
    var property deco = flor // La decoracion no es de chocolate
    method calorias() = 3000 + deco.calorias() + interior.calorias()
    method esDeChocolateBlanco() = interior.esDeChocolateBlanco()
    method esDeChocolateAmargo() = true
    method cambiarDeco(nuevaDeco){deco = nuevaDeco}
}
