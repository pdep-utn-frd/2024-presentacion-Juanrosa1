object delfina{
  var diversion = 0
  var consolapresente=play
  method jugabilidadconsola(){
    return consolapresente.jugabilidad()
  }
  method agarrar(consola){
    consolapresente=consola
  }
  method jugar(videojuego){
    diversion=diversion+videojuego.diversion_otorgada()
    consolapresente.usar()
  }
  method diversion()=diversion
}

object arkanoid{
  method diversion_otorgada(){
    return 50 
  }
}

object mario{
  method diversion_otorgada(){
    return if (delfina.jugabilidadconsola()>5) 100 else 15

  }
}
object pokemon{
  method diversion_otorgada(){
    return delfina.jugabilidadconsola()*10
  }
}
object play{
  const jugabilidad = 10
  method jugabilidad()=jugabilidad
  method usar(){

  }
}
object portatil{
  var bateriabaja = false 
  method usar(){
    bateriabaja=true
  }
  method jugabilidad(){
    return if (bateriabaja)1 else 8
  }
}