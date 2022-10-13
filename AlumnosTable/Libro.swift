//
//  Libro.swift
//  LibrosTable
//
//  Created by Libro on 9/22/22.
//  Copyright © 2022 Libro. All rights reserved.
//

class Libro {
    var nombre : String
    var año : String
    var genero : String
    var autor : String
    var ediciones : [Ediciones]
    var paginas : String
    var encuadernacion : String
    var copiasv : String
    var precio : String
    var imagen : String
    var imagen2 : String
    

    init(nombre : String, año : String, genero : String, autor : String, ediciones : [Ediciones], paginas : String, encuadernacion : String, copiasv : String, precio : String, imagen : String, imagen2 : String ){
        self.nombre = nombre
        self.año = año
        self.genero = genero
        self.autor = autor
        self.ediciones = ediciones
        self.paginas = paginas
        self.encuadernacion = encuadernacion
        self.copiasv = copiasv
        self.precio = precio
        self.imagen = imagen
        self.imagen2 = imagen2

    }
}


