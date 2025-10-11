import materia.*
import materiaAprobada.*
import carrera.*

class Estudiante {
  const property aprobadas = #{} //coleccion de instancias de MateriaAprobada
  
  // const property materiasCursando = #{}
  method esMateriaAprobada(materiaQueSeAprobo) = self.aprobadas().any(
    { ma => ma.materia() == materiaQueSeAprobo }
  )
  
  method aprobarMateria(_materia_, _nota_) {
    if (not self.esMateriaAprobada(_materia_)) self.aprobadas().add(
        new MateriaAprobada(materia = _materia_, nota = _nota_)
      )else{
        throw new Exception(message="Esa materia ya figura como una materia aprobada y no se puede reemplazar ni sacar.")
      }
  }
  
  method cantidadAprobadas() = aprobadas.size()
  
  method promedioAprobadas() = aprobadas.average({ apr => apr.nota() })
}
