import carrera.*

class Materia {
  const property carrera = null
  const property correlativas = #{}

  method tieneCorrelativasAprobadasPor(_estudiante_){
    return _estudiante_.aprobadas().intersection(self.correlativas())== self.correlativas()
  }
  // const property curso = #{} //lista de estudiantes cursando actualmente
} 

//Programacion
const elementosDeProgramacion = new Materia(carrera = programacion)

const matematica1 = new Materia(carrera = programacion)

const baseDeDatos = new Materia(carrera = programacion, correlativas=#{elementosDeProgramacion})

const objetos1 = new Materia(carrera = programacion, correlativas=#{elementosDeProgramacion})

const objetos2 = new Materia(carrera = programacion, correlativas= #{objetos1, matematica1})

const objetos3 = new Materia(carrera = programacion, correlativas=#{objetos2})

const trabajoFinal = new Materia(carrera = programacion, correlativas= programacion.materias())


//Medicina
const quimica = new Materia(carrera = medicina)

const biologia1 = new Materia(carrera = medicina)

const biologia2 = new Materia(carrera = medicina)

const anatomiaGeneral = new Materia(carrera = medicina)

//Derecho
const latin = new Materia(carrera = derecho)

const derechoRomano = new Materia(carrera = derecho)

const historiaDelDerechoArgentino = new Materia(carrera = derecho)

const derechoPenal1 = new Materia(carrera = derecho)

const derechoPenal2 = new Materia(carrera = derecho)

