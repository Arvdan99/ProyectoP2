//
//  Alumno.swift
//  AlumnosTable
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Alumno {
    var nombre : String
    var año : String
    var genero : String
    var autor : String
    var materias : [Materia]
    var paginas : String
    var encuadernacion : String
    var copiasv : String
    

    init(nombre : String, año : String, genero : String, autor : String, materias : [Materia], paginas : String, encuadernacion : String, copiasv : String ){
        self.nombre = nombre
        self.año = año
        self.genero = genero
        self.autor = autor
        self.materias = materias
        self.paginas = paginas
        self.encuadernacion = encuadernacion
        self.copiasv = copiasv

    }
}


