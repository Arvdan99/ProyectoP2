//
//  Perfil.swift
//  project3
//
//  Created by Alumno ULSA on 18/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class Perfil{
    var nombre: String
    var matricula: String
    var carrera: String
    var perfil: [Menu]
    
    init(nombre: String, matricula: String, carrera: String, perfil: [Menu]) {
        self.nombre = nombre
        self.matricula = matricula
        self.carrera = carrera
        self.perfil = perfil
    }
}
