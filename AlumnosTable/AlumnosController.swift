//
//  ViewController.swift
//  AlumnosTable
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvAlumnos: UITableView!
    var Alumnos : [Alumno] = []
    var Materias1 : [Materia] = []
    var Materias2 : [Materia] = []
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Alumnos.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        celda?.lblNombre.text = Alumnos[indexPath.row].nombre
        celda?.lblAño.text = Alumnos[indexPath.row].año
        celda?.lblGenero.text = Alumnos[indexPath.row].genero
        celda?.lblAutor.text = Alumnos[indexPath.row].autor
        return celda!
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Materias1.append(Materia(nombre: "Calculo", codigo: "856199"))
        Materias1.append(Materia(nombre: "Redes", codigo: "856198"))
        Materias1.append(Materia(nombre: "Diosito", codigo: "666"))
        
        Materias2.append(Materia(nombre: "Mexico", codigo: "856197"))
        Materias2.append(Materia(nombre: "Diosito", codigo: "666"))
        Materias2.append(Materia(nombre: "Moviles", codigo: "856191"))
        
        
        Alumnos.append(Alumno(nombre: "Harry Potter y la Piedra Filosofal", año: "1997", genero: "Fantasía", autor: "J.K Rowling", materias: Materias1, paginas: "256", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "120 Millones"))
        Alumnos.append(Alumno(nombre: "Harry Potter y la Cámara Secreta", año: "1998", genero: "Fantasía", autor: "J.K Rowling", materias: Materias2, paginas: "288", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "60 Milones"))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesAlumnoController
        destino.alumno = Alumnos[tvAlumnos.indexPathForSelectedRow!.row]
    }
}

