//
//  DetallesLibroController.swift
//  LibrosTable
//
//  Created by Libro on 9/27/22.
//  Copyright © 2022 Libro. All rights reserved.
//

import UIKit

class DetallesLibroController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var Libro : Libro?
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblAutor: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblPaginas: UILabel!
    @IBOutlet weak var lblEncuadernacion: UILabel!
    @IBOutlet weak var lblCopiasV: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var Image2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Libro != nil{
            self.title = Libro!.nombre
            //lblAño.text = Libro!.año
            lblNombre.text = Libro!.nombre
            lblAutor.text = "\(Libro!.autor) (\(Libro!.año))"
            lblGenero.text = Libro!.genero
            lblPaginas.text = Libro!.paginas
            lblEncuadernacion.text = Libro!.encuadernacion
            lblCopiasV.text = Libro!.copiasv
            lblPrecio.text = Libro!.precio
            Image2.image = UIImage(named: Libro!.imagen2)
            
            Image2.layer.cornerRadius = 10
            Image2.clipsToBounds = true
            Image2.layer.borderWidth = 2
    
                   
        
            
    
        }else {
            self.title = "Libro"
        }
        
        
        self.title = "Detalles Libro"
        
    }
    
    //Altura de celda
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 60
       }
       //Nùmero de secciones que tiene mi table view
       func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       
       //Numero de filas por seccion
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Libro!.ediciones.count
       }
       
       //Construye cada celda
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let celda = tableView.dequeueReusableCell(withIdentifier: "celdaEdicion") as? CeldaEdicionController
        
           celda?.lblEdicion.text = Libro!.ediciones[indexPath.row].edicion
           celda?.lblEditorial.text = Libro!.ediciones[indexPath.row].editorial
           celda?.lblAño.text = Libro!.ediciones[indexPath.row].año
        
        
           return celda!
       }
    
}
