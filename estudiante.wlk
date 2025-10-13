import materia.*
import materiaAprobada.*
import carrera.*

class Estudiante {
  const property aprobadas = #{} //coleccion de instancias de MateriaAprobada
  const property materiasInscriptas = #{}
  const property carrerasCursando = #{}
  
  method esMateriaAprobada(materiaQueSeAprobo) = self.aprobadas().any(
    { ma => ma.materia() == materiaQueSeAprobo }
  )
  
  method esMateriaInscripta(materiaInscripta) = self.materiasInscriptas().any(
    { ma => ma.materia() == materiaInscripta }
  )
  
  method esCarreraCursando(_carrera_) = carrerasCursando.contains(_carrera_)
  
  method cantidadAprobadas() = aprobadas.size()
  
  method promedioAprobadas() = aprobadas.average({ apr => apr.nota() })
  
  method aprobarMateria(_materia_, _nota_) {
    if (not self.esMateriaAprobada(_materia_)) {
      self.aprobadas().add(
        new MateriaAprobada(materia = _materia_, nota = _nota_)
      )
    } else {
      throw new Exception(
        message = "Esa materia ya figura como una materia aprobada y no se puede reemplazar ni sacar."
      )
    }
  }
  
  method puedeInscribirseAMateria(_materia_) = (self.esCarreraCursando(
    _materia_.carrera()
  ) and ((not self.esMateriaAprobada(
    _materia_
  )) and (not self.esMateriaInscripta(
    _materia_
  )))) and _materia_.tieneCorrelativasAprobadasPor(self)
  
  method inscribirMateria(_materia_) {
    if (self.puedeInscribirseAMateria(_materia_)) {
      self.materiasInscriptas().add(_materia_)
    } else {
      throw new Exception(message = "No puede inscribirse a esta materia")
    }
  }
  
  method cursarCarrera(_carrera_) {
    if (not self.esCarreraCursando(_carrera_)) {
      self.carrerasCursando().add(_carrera_)
    } else {
      throw new Exception(
        message = "Esa carrera ya figura como una carrera en curso y no se puede reemplazar ni sacar."
      )
    }
  }
  
  method materiasDeCarrerasCursando() {
    if (not self.carrerasCursando().isEmpty()) self.carrerasCursando().map(
        { c => c.materias() }
      ).flatten()
  }
}