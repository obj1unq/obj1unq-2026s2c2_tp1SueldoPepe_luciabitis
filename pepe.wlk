//PERSONAS
object pepe {
    var categoria = null

    var resultado = null

    var presentismo = null

    var faltas = 0


    method faltar(_faltas) {
      faltas = faltas + _faltas
    }

    method faltas() {
      return faltas
    }

    method sueldoNeto() {
      return categoria.sueldoPorCategoria()
    }

    method presentismo() {
      return presentismo
    }
    
    method resultado() {
      return resultado
    }

    method sueldo() {
      return self.sueldoNeto() + self.valorPorResultado() + self.valorPorPresentismo()
    }
    
    method categoriaAsignada(_categoria) {
      categoria = _categoria
    }
 
    method bonoPorResultado(_resultado){
      resultado = _resultado
    }

    method bonoPorPresentismo(_presentismo) {
      presentismo = _presentismo
    }

    method valorPorResultado() {
      return resultado.calculoPorResultado(self)
    }

    method valorPorPresentismo() {
      return presentismo.calculoPorPresentismo(self)
    }
    
}

object moria {
    var categoria = null

    var resultado = null

    method sueldoNeto() {
      return categoria.sueldoPorCategoria()* 1.3
    }

    method resultado() {
      return resultado
    }

    method sueldo() {
      return self.sueldoNeto()  + self.valorPorResultado()
    }
    
    method categoriaAsignada(_categoria) {
      categoria = _categoria
    }
 
    method bonoPorResultado(_resultado){
      resultado = _resultado
    }

    method valorPorResultado() {
      return resultado.calculoPorResultado(self)
    }

}

object roque {
    var resultado = null

    method sueldoNeto() {
      return 28000
    }
    
    method resultado() {
      return resultado
    }

    method sueldo() {
      return self.sueldoNeto() + self.valorPorResultado() + 9000
    }
    
 
    method bonoPorResultado(_resultado){
      resultado = _resultado
    }

    method valorPorResultado() {
      return resultado.calculoPorResultado(self)
    }

    
}

object ernesto {

    var presentismo = null

    var faltas = 0

    var compañerx = moria

    method compañerx(){
      return compañerx
    }

    method asignarCompañerx(_compañerx){
      compañerx = _compañerx
    }

    method faltar(_faltas) {
      faltas = faltas + _faltas
    }

    method faltas() {
      return faltas
    }

    method sueldoNeto() {
      return compañerx.sueldoNeto()
    }

    method presentismo() {
      return presentismo
    }
    

    method sueldo() {
      return self.sueldoNeto() + self.valorPorPresentismo()
    }
    

    method bonoPorPresentismo(_presentismo) {
      presentismo = _presentismo
    }
    
    method valorPorPresentismo() {
      return presentismo.calculoPorPresentismo(self)
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

object vendedor {
  var muchasVentas = false
  const sueldo = 16000

  method sueldoPorCategoria() {
    if (muchasVentas)  {
       return sueldo * 1.25
       } else  {
       return sueldo
       }
  }

  method activarAumentoPorMuchasVentas() {
     muchasVentas = true
  }
  
  method desactivarAumentoPorMuchasVentas() {
     muchasVentas = false
  }
}

object medioTiempo {

  var categoriaBase = null

  method categoriaBase(categoria) {
    categoriaBase = categoria
  }

  method sueldoPorCategoria() {
    return categoriaBase.sueldoPorCategoria() * 0.5
  }
}

//RESULTADOS

object porcentaje {
  const porcentaje = 0.1

  method calculoPorResultado(empleado) {
    return empleado.sueldoNeto() * porcentaje
  }
  
}

object montoFijo {
  const monto = 800

  method calculoPorResultado(empleado) {
    return monto
  }
  
}

object nulo {
  const monto = 0

  method calculoPorResultado(empleado) {
    return monto
  }

  method calculoPorPresentismo(empleado) { 
    return monto
  }
}

//PRESENTISMO

object bonoNormal{
   

   method calculoPorPresentismo(empleado) {
    if (empleado.faltas() == 0) {
      return  2000
    } else if (empleado.faltas() == 1) {
      return  1000
    } else {
      return  0
    }
   }
}

object ajuste{
   

   method calculoPorPresentismo(empleado) {
    if (empleado.faltas() == 0) {
      return 100
    } else {
      return 0
    }
   }
}

object demagógico{
   

   method calculoPorPresentismo(empleado) {
    if (empleado.faltas() == 0) {
      return  100
    } else {
      return 0
    }
   }
}



