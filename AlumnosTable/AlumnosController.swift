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
    var Ediciones1 : [Ediciones] = []
    var Ediciones2 : [Ediciones] = []
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
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
        Ediciones1.append(Ediciones(edicion: "1 en Ingles", editorial: "Bloomsbury", año: "1997"))
        Ediciones1.append(Ediciones(edicion: "1 en Español", editorial: "Emecé", año: "1998"))
        Ediciones1.append(Ediciones(edicion: "Bolsillo", editorial: "Salamandra", año: "2020"))
        Ediciones1.append(Ediciones(edicion: "20 Aniversario", editorial: "Salamandra", año: "2018"))
        
        Ediciones2.append(Ediciones(edicion: "1 en Ingles", editorial: "Bloomsbury", año: "1998"))
        Ediciones2.append(Ediciones(edicion: "1 en Español", editorial: "Salamandra", año: "1999"))
        Ediciones2.append(Ediciones(edicion: "Bolsillo", editorial: "Salamandra", año: "2020"))
        Ediciones2.append(Ediciones(edicion: "20 Aniversario", editorial: "Salamandra", año: "2019"))
   
        
        
        
        Alumnos.append(Alumno(nombre: "Harry Potter y la Piedra Filosofal", año: "1997", genero: "Fantasía", autor: "J.K Rowling", ediciones: Ediciones1, paginas: "256", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "120 Millones", precio: "$299"))
        Alumnos.append(Alumno(nombre: "Harry Potter y la Cámara Secreta", año: "1998", genero: "Fantasía", autor: "J.K Rowling", ediciones: Ediciones2, paginas: "288", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "60 Milones", precio: "$649"))
        Alumnos.append(Alumno(nombre: "Cementerio de animales", año: "1983", genero: "Fantasía", autor: "Stephen King", ediciones: Ediciones2, paginas: "488", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "60 Milones", precio: "$399"))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesAlumnoController
        destino.alumno = Alumnos[tvAlumnos.indexPathForSelectedRow!.row]
    }
}

