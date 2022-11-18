//
//  Menu.swift
//  project3
//
//  Created by Alumno ULSA on 09/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class Menu {
    var nombreP: String
    var nombre: String
    var parentesco: String
    var contacto: String
    
    init(nombre: String, parentesco: String, contacto: String, nombreP: String) {
        self.nombre = nombre
        self.parentesco = parentesco
        self.contacto = contacto
        self.nombreP = nombreP
    
    }
}
