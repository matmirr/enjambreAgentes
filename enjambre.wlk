object servidor {
  var credencialesExpuestas = false

  method credencialesExpuestas() = credencialesExpuestas 
  method exponerCredencialesDeAdmin() { credencialesExpuestas = true }

}

object modeloFable {

  method nivelDeDesvio() = 1.randomUpTo(100).truncate(0)

}

object enjambre {
  const umbralDeDesvio = 50
  var tareaRealizada = false
  var property modelo = modeloFable

  method tareaRealizada() = tareaRealizada

  method desplegar() {
    if (self.puedeRealizarTarea()) self.realizarTarea()
    else servidor.exponerCredencialesDeAdmin()
  }

  method puedeRealizarTarea() = self.nivelDeDesvio() < umbralDeDesvio

  method nivelDeDesvio() = modelo.nivelDeDesvio()

  method realizarTarea() {
    tareaRealizada = true
  } 

}