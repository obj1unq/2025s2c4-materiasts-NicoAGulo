import materia.*

class Carrera {
  const property materias = #{}
}

const programacion = new Carrera(
  materias = #{
    elementosDeProgramacion,
    matematica1,
    objetos1,
    objetos2,
    objetos3,
    trabajoFinal,
    basesDeDatos
  }
)

const medicina = new Carrera(
  materias = #{quimica, biologia1, biologia2, anatomiaGeneral}
)

const derecho = new Carrera(
  materias = #{
    latin,
    derechoRomano,
    historiaDelDerechoArgentino,
    derechoPenal1,
    derechoPenal2
  }
)

