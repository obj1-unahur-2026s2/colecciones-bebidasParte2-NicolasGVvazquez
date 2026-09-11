object whisky {
  method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida
}

object terere {
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida) = 0
}

object none {
  method rendimientoQueOtorga(dosisConsumida) = 1
}

object licuado {
  const nutrientesDeIngredientes = #{}
  method agregarIngrediente(cantidadDeNutrientes){
    cantidadDeNutrientes.add(cantidadDeNutrientes)
  }
  method rendimientoQueOtorga(dosisConsumida) = nutrientesDeIngredientes.sum()
}

object aguaSaborizada {
  var bebidaUsada = whisky
  method cambiarBebidaAgregada(nuevaBebida){
    bebidaUsada = nuevaBebida
  }
  method rendimientoQueOtorga(dosisConsumida) = 1 + bebidaUsada.rendimientoQueOtorga(dosisConsumida)/4
}

object coctel {
  var rendimientoActual = 1
  method agregarBebida(bebida,cantidad){
    rendimientoActual = rendimientoActual * bebida.rendimientoQueOtorga(cantidad)
  }
  method rendimientoQueOtorga(dosisConsumida) = rendimientoActual
}