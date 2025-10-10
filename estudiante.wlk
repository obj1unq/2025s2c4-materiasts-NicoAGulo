import materia.*
import materiaAprobada.*
import carrera.*

class Estudiante{
    const property aprobadas = #{} //coleccion de instancias de MateriaAprobada
    // const property materiasCursando = #{}

    method esMateriaAprobada(materiaQueSeAprobo){
        return self.aprobadas().any{ma => ma.materia()==materiaQueSeAprobo}
    }

    method aprobarMateria(_materia_, _nota_){
        self.aprobadas().add(new MateriaAprobada(materia= _materia_, nota=_nota_))
    }
}


