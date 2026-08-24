object pepe {
    var categoria = null

    var resultado = null

    var presentismo = null

    var faltas = 0

	var sueldo = 0

    var sn = 0

    var br = 0

    var bp = 0

    method faltar() {
      faltas = faltas + 1
    }

    method faltas() {
      return faltas
    }

    method sueldoNeto() {
      return sn
    }

    method presentismo() {
      return presentismo
    }


    method sueldo() {
      sueldo = sueldo + sn + br + bp
    }
    
    method categoria(_categoria) {
      categoria = _categoria
      sn = categoria.sueldoPorCategoria()
    }
 
    method resultado(_resultado){
      resultado = _resultado
      br = _resultado.calculoPorResultado()
    }

    method bonoPorPresentismo(_presentismo) {
      presentismo = _presentismo
      bp = _presentismo.calculoPorPresentismo()
    }
    
}

//CATEGORIAS

object cadete {
  const sueldo = 20000

  method sueldoPorCategoria() {
    return sueldo
  }
}

object gerente {
  const sueldo = 15000

  method sueldoPorCategoria() {
    return sueldo
  }
}

//RESULTADOS

object porcentaje {
  const porcentaje = 0.1

  method calculoPorResultado() {
    return pepe.sueldoNeto() * porcentaje
  }
  
}

object montoFijo {
  const monto = 800

  method calculoPorResultado() {
    return monto
  }
  
}

object nulo {
  const monto = 0

  method calculoPorResultado() {
    return monto
  }
  
}

//PRESENTISMO

object normal{
   var bono = 0

   method calculoPorPresentismo() {
    if (pepe.faltas() == 0) {
      bono = 2000
    } else if (pepe.faltas() == 1) {
      bono = 1000
    } else {
      bono = 0
    }
   }
}

object ajuste{
   var bono = 0

   method calculoPorPresentismo() {
    if (pepe.faltas() == 0) {
      bono = 100
    } else {
      bono = 0
    }
   }
}

object demagógico{
   var bono = 0

   method calculoPorPresentismo() {
    if (pepe.faltas() == 0) {
      bono = 100
    } else {
      bono = 0
    }
   }
}

