//
//  ViewController.swift
//  LibrosTable
//
//  Created by Libro on 9/22/22.
//  Copyright © 2022 Libro. All rights reserved.
//

import UIKit

class LibrosController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvLibros: UITableView!
    var Libros : [Libro] = []
    var Ediciones1 : [Ediciones] = []
    var Ediciones2 : [Ediciones] = []
    var Ediciones3 : [Ediciones] = []
    var Ediciones4 : [Ediciones] = []
    var Ediciones5 : [Ediciones] = []
    var Ediciones6 : [Ediciones] = []
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Libros.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaLibro") as? CeldaLibroController
        celda?.lblNombre.text = Libros[indexPath.row].nombre
        celda?.lblAño.text = Libros[indexPath.row].año
        celda?.lblGenero.text = Libros[indexPath.row].genero
        celda?.lblAutor.text = Libros[indexPath.row].autor
        celda?.image1.image = UIImage(named: Libros[indexPath.row].imagen)
        
        
        celda?.image1.layer.cornerRadius = 10
        celda?.image1.clipsToBounds = true
        celda?.image1.layer.borderWidth = 2
        //celda?.image1.layer.backgroundColor = UIColor.blue.cgColor
        
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
        
        Ediciones3.append(Ediciones(edicion: "1 en Ingles", editorial: "Doubleday", año: "1983"))
        Ediciones3.append(Ediciones(edicion: "1 en Español", editorial: "Plaza & Janés", año: "1984"))
        Ediciones3.append(Ediciones(edicion: "Bolsillo", editorial: "Debolsillo", año: "2005"))
        Ediciones3.append(Ediciones(edicion: "Tapa Dura", editorial: "Plaza & Janés", año: "1992"))
        
        Ediciones4.append(Ediciones(edicion: "1 en Ingles", editorial: "Doubleday", año: "1977"))
        Ediciones4.append(Ediciones(edicion: "1 en Español", editorial: "Pomaire", año: "1977"))
        Ediciones4.append(Ediciones(edicion: "Pasta Blanda", editorial: "Debolsillo", año: "2022"))
        Ediciones4.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2013"))
        
        Ediciones5.append(Ediciones(edicion: "Unica", editorial: "MueveTuLenegua", año: "2018"))
        
        Ediciones6.append(Ediciones(edicion: "Unica", editorial: "MueveTuLenegua", año: "2018"))
               
        
        
              
          
   
        
        
        
        Libros.append(Libro(nombre: "Harry Potter y la Piedra Filosofal", año: "1997", genero: "Fantasía", autor: "J.K Rowling", ediciones: Ediciones1, paginas: "256", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "120 Millones", precio: "$299", imagen: "PiedraFilosofal", imagen2: "PiedraFilosofal1"))
        Libros.append(Libro(nombre: "Harry Potter y la Cámara Secreta", año: "1998", genero: "Fantasía", autor: "J.K Rowling", ediciones: Ediciones2, paginas: "288", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "60 Milones", precio: "$649", imagen: "CamaraSecreta", imagen2: "CamaraSecreta2"))
        Libros.append(Libro(nombre: "Cementerio de animales", año: "1983", genero: "Terror", autor: "Stephen King", ediciones: Ediciones3, paginas: "488", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "40 Milones", precio: "$399", imagen: "CementerioA", imagen2: "CementerioA2"))
        Libros.append(Libro(nombre: "El resplandor", año: "1977", genero: "Terror", autor: "Stephen King", ediciones: Ediciones4, paginas: "643", encuadernacion: "Tapa dura/Tapa blanda", copiasv: "350 Milones", precio: "$499", imagen: "Resplandor", imagen2: "Resplandor2"))
        Libros.append(Libro(nombre: "Marcar como no leído", año: "2018", genero: "Autobiografico", autor: "Zpu", ediciones: Ediciones5, paginas: "244", encuadernacion: "Tapa blanda", copiasv: "300 mil", precio: "265", imagen: "NoLeido", imagen2: "NoleidoZpu"))
        Libros.append(Libro(nombre: "QUE. TE. JODAN.", año: "2018", genero: "Poesia", autor: "Soma", ediciones: Ediciones6, paginas: "120", encuadernacion: "Tapa blanda", copiasv: "200 mil", precio: "300", imagen: "Soma", imagen2: "Soma2"))
        Libros.append(Libro(nombre: "Casino Royale", año: "1953", genero: "Espionaje", autor: "Ian Fleming", ediciones: Ediciones6, paginas: "120", encuadernacion: "Tapa blanda", copiasv: "200 mil", precio: "300", imagen: "CasinoR1", imagen2: "CasinoR"))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesLibroController
        destino.Libro = Libros[tvLibros.indexPathForSelectedRow!.row]
    }
}

