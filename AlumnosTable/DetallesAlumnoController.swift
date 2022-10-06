//
//  DetallesAlumnoController.swift
//  AlumnosTable
//
//  Created by Alumno on 9/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesAlumnoController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var alumno : Alumno?
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblAutor: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblPaginas: UILabel!
    @IBOutlet weak var lblEncuadernacion: UILabel!
    @IBOutlet weak var lblCopiasV: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if alumno != nil{
            self.title = alumno!.nombre
            lblAño.text = alumno!.año
            lblNombre.text = alumno!.nombre
            lblAutor.text = "\(alumno!.autor)"
            lblGenero.text = alumno!.genero
            lblPaginas.text = alumno!.paginas
            lblEncuadernacion.text = alumno!.encuadernacion
            lblCopiasV.text = alumno!.copiasv
            lblPrecio.text = alumno!.precio
            
        }else {
            self.title = "Libro"
        }
        
        
        self.title = "Detalles Libro"
        
    }
    
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
        return alumno!.ediciones.count
       }
       
       //Construye cada celda
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as? CeldaMateriaController
        
           celda?.lblEdicion.text = alumno!.ediciones[indexPath.row].edicion
           celda?.lblEditorial.text = alumno!.ediciones[indexPath.row].editorial
           celda?.lblAño.text = alumno!.ediciones[indexPath.row].año
        
        
           return celda!
       }
    
}
