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
    var Ediciones7 : [Ediciones] = []
    var Ediciones8 : [Ediciones] = []
    var Ediciones9 : [Ediciones] = []
    var Ediciones10 : [Ediciones] = []
    var Ediciones11 : [Ediciones] = []
    var Ediciones12 : [Ediciones] = []
    var Ediciones13 : [Ediciones] = []
    var Ediciones14 : [Ediciones] = []
    var Ediciones15 : [Ediciones] = []
    
    
    
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
        Ediciones1.append(Ediciones(edicion: "Tapa Dura", editorial: "Plaza & Janés", año: "1992"))
        
        
        Ediciones2.append(Ediciones(edicion: "1 en Ingles", editorial: "Bloomsbury", año: "1998"))
        Ediciones2.append(Ediciones(edicion: "1 en Español", editorial: "Salamandra", año: "1999"))
        Ediciones2.append(Ediciones(edicion: "Bolsillo", editorial: "Salamandra", año: "2020"))
        Ediciones2.append(Ediciones(edicion: "20 Aniversario", editorial: "Salamandra", año: "2019"))
        Ediciones2.append(Ediciones(edicion: "Tapa Dura", editorial: "Plaza & Janés", año: "1992"))
        
        Ediciones3.append(Ediciones(edicion: "1 en Ingles", editorial: "Doubleday", año: "1983"))
        Ediciones3.append(Ediciones(edicion: "1 en Español", editorial: "Plaza & Janés", año: "1984"))
        Ediciones3.append(Ediciones(edicion: "Bolsillo", editorial: "Debolsillo", año: "2005"))
        Ediciones3.append(Ediciones(edicion: "Tapa Dura", editorial: "Plaza & Janés", año: "1992"))
        Ediciones3.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2013"))
        
        Ediciones4.append(Ediciones(edicion: "1 en Ingles", editorial: "Doubleday", año: "1977"))
        Ediciones4.append(Ediciones(edicion: "1 en Español", editorial: "Pomaire", año: "1977"))
        Ediciones4.append(Ediciones(edicion: "Pasta Blanda", editorial: "Debolsillo", año: "2022"))
        Ediciones4.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2013"))
        Ediciones4.append(Ediciones(edicion: "Tapa Dura", editorial: "Plaza & Janés", año: "1992"))
        
        Ediciones5.append(Ediciones(edicion: "Unica", editorial: "MueveTuLenegua", año: "2018"))
        Ediciones5.append(Ediciones(edicion: "México", editorial: "MueveTuLenegua", año: "2019"))
        Ediciones5.append(Ediciones(edicion: "Ingles", editorial: "MueveTuLenegua", año: "2021"))
        Ediciones5.append(Ediciones(edicion: "Tapa Dura", editorial: "Plaza & Janés", año: "2020"))
        Ediciones5.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2017"))
        
        Ediciones6.append(Ediciones(edicion: "Unica", editorial: "MueveTuLenegua", año: "2018"))
        Ediciones6.append(Ediciones(edicion: "México", editorial: "MueveTuLenegua", año: "2019"))
        Ediciones6.append(Ediciones(edicion: "Ingles", editorial: "MueveTuLenegua", año: "2020"))
        Ediciones6.append(Ediciones(edicion: "Rustica", editorial: "Plaza & Janés", año: "2020"))
        Ediciones6.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2021"))
        
        Ediciones7.append(Ediciones(edicion: "1", editorial: "Grijalbo", año: "2021"))
        Ediciones7.append(Ediciones(edicion: "España", editorial: "MueveTuLengua", año: "2021"))
        Ediciones7.append(Ediciones(edicion: "Internacional", editorial: "Debolsillo", año: "2021"))
        Ediciones7.append(Ediciones(edicion: "Usa", editorial: "Walker Books", año: "2022"))
        Ediciones7.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2021"))
        
        Ediciones8.append(Ediciones(edicion: "1", editorial: "Destino", año: "2015"))
        Ediciones8.append(Ediciones(edicion: "España", editorial: "Planeta", año: "2016"))
        Ediciones8.append(Ediciones(edicion: "Usa", editorial: "Walker Books", año: "2015"))
        Ediciones8.append(Ediciones(edicion: "Unica", editorial: "MueveTuLenegua", año: "2018"))
        Ediciones8.append(Ediciones(edicion: "México", editorial: "MueveTuLenegua", año: "2019"))
        
        Ediciones9.append(Ediciones(edicion: "Mexico", editorial: "Alfaguara Juvenil", año: "2012"))
        Ediciones9.append(Ediciones(edicion: "España", editorial: "Planeta", año: "2017"))
        Ediciones9.append(Ediciones(edicion: "Rustica", editorial: "Debolsillo", año: "2013"))
        Ediciones9.append(Ediciones(edicion: "México", editorial: "MueveTuLenegua", año: "2019"))
        Ediciones9.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2021"))
        
        
        Ediciones10.append(Ediciones(edicion: "Mexico", editorial: "Debolsillo", año: "2010"))
        Ediciones10.append(Ediciones(edicion: "1", editorial: "Penguin Random", año: "2010"))
        Ediciones10.append(Ediciones(edicion: "3", editorial: "Debate", año: "2018"))
        Ediciones10.append(Ediciones(edicion: "México", editorial: "GANDHI", año: "2020"))
        Ediciones3.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2011"))
        
        Ediciones11.append(Ediciones(edicion: "1", editorial: "ALMUZARA", año: "2006"))
        Ediciones11.append(Ediciones(edicion: "2", editorial: "ALMUZARA", año: "2008"))
        Ediciones11.append(Ediciones(edicion: "CreateSpace", editorial: "Debolsillo", año: "2018"))
        Ediciones11.append(Ediciones(edicion: "Mexico", editorial: "Debolsillo", año: "2015"))
        Ediciones11.append(Ediciones(edicion: "1", editorial: "Penguin Random", año: "2016"))
        
        Ediciones12.append(Ediciones(edicion: "EUA", editorial: "Reynal&Hitchcock", año: "1944"))
        Ediciones12.append(Ediciones(edicion: "Francia", editorial: "Gallimard", año: "1943"))
        Ediciones12.append(Ediciones(edicion: "Argentina", editorial: "Emecé", año: "1954"))
        Ediciones12.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2013"))
        Ediciones12.append(Ediciones(edicion: "CreateSpace", editorial: "Debolsillo", año: "2018"))
        
        Ediciones13.append(Ediciones(edicion: "España", editorial: "TIKAL EDITORIAL", año: "2014"))
        Ediciones13.append(Ediciones(edicion: "España", editorial: "Dojo", año: "2018"))
        Ediciones13.append(Ediciones(edicion: "México", editorial: "GANDHI", año: "2020"))
        Ediciones13.append(Ediciones(edicion: "Aniversario", editorial: "Debolsillo", año: "2022"))
        Ediciones13.append(Ediciones(edicion: "CreateSpace", editorial: "Debolsillo", año: "2020"))
        
        Ediciones14.append(Ediciones(edicion: "Santillana", editorial: "Loqueleo", año: "2014"))
        Ediciones14.append(Ediciones(edicion: "Tapa dura", editorial: "Alfaguara", año: "2019"))
        Ediciones14.append(Ediciones(edicion: "1", editorial: "Thienemanns", año: "1979"))
        Ediciones14.append(Ediciones(edicion: "España", editorial: "PENGUIN", año: "2019"))
        Ediciones14.append(Ediciones(edicion: "México", editorial: "Debolsillo", año: "2020"))
          
        Ediciones15.append(Ediciones(edicion: "1", editorial: "SUMA", año: "2013"))
        Ediciones15.append(Ediciones(edicion: "España", editorial: "PENGUIN", año: "2019"))
        Ediciones15.append(Ediciones(edicion: "México", editorial: "Debolsillo", año: "2020"))
        Ediciones15.append(Ediciones(edicion: "Pasta Blanda", editorial: "Debolsillo", año: "2022"))
        Ediciones15.append(Ediciones(edicion: "Tapa Dura", editorial: "Plaza & Janés", año: "1992"))
   
        
        
        
        Libros.append(Libro(nombre: "Harry Potter y la Piedra Filosofal", año: "1997", genero: "Fantasía", autor: "J.K Rowling", ediciones: Ediciones1, paginas: "256", encuadernacion: "Tapa dura/blanda", copiasv: "120 Millones", precio: "$299", imagen: "PiedraFilosofal", imagen2: "PiedraFilosofal1"))
        Libros.append(Libro(nombre: "Harry Potter y la Cámara Secreta", año: "1998", genero: "Fantasía", autor: "J.K Rowling", ediciones: Ediciones2, paginas: "288", encuadernacion: "Tapa blanda", copiasv: "60 Millones", precio: "$649", imagen: "CamaraSecreta", imagen2: "CamaraSecreta2"))
        Libros.append(Libro(nombre: "Cementerio de animales", año: "1983", genero: "Terror", autor: "Stephen King", ediciones: Ediciones3, paginas: "488", encuadernacion: "Tapa blanda", copiasv: "40 Milones", precio: "$399", imagen: "CementerioA", imagen2: "CementerioA2"))
        Libros.append(Libro(nombre: "El resplandor", año: "1977", genero: "Terror", autor: "Stephen King", ediciones: Ediciones4, paginas: "643", encuadernacion: "Tapa blanda", copiasv: "350 Millones", precio: "$499", imagen: "Resplandor", imagen2: "Resplandor2"))
        Libros.append(Libro(nombre: "Marcar como no leído", año: "2018", genero: "Autobiografico", autor: "Zpu", ediciones: Ediciones5, paginas: "244", encuadernacion: "Tapa blanda", copiasv: "300 mil", precio: "$265", imagen: "NoLeido", imagen2: "NoleidoZpu"))
        Libros.append(Libro(nombre: "QUE. TE. JODAN.", año: "2018", genero: "Poesia", autor: "Soma", ediciones: Ediciones6, paginas: "120", encuadernacion: "Tapa blanda", copiasv: "200 mil", precio: "$300", imagen: "Soma", imagen2: "Soma2"))
        Libros.append(Libro(nombre: "Casino Royale", año: "1953", genero: "Espionaje", autor: "Ian Fleming", ediciones: Ediciones6, paginas: "120", encuadernacion: "Tapa blanda", copiasv: "200 mil", precio: "$300", imagen: "CasinoR1", imagen2: "CasinoR"))
        Libros.append(Libro(nombre: "Siete martes", año: "2021", genero: "Ficción", autor: "Chojin", ediciones: Ediciones7, paginas: "320", encuadernacion: "Tapa blanda", copiasv: "190 mil", precio: "$400", imagen: "SieteM", imagen2: "SieteM1"))
        Libros.append(Libro(nombre: "Las crónicas de Magnus Bane.", año: "2015", genero: "Fantasía", autor: "Cassandra Clare", ediciones: Ediciones8, paginas: "470", encuadernacion: "Tapa blanda", copiasv: "50 Millones", precio: "$449", imagen: "Magnus", imagen2: "Magnus1"))
        Libros.append(Libro(nombre: "1984.", año: "2015", genero: "Ficción", autor: "George Orwell", ediciones: Ediciones9, paginas: "368", encuadernacion: "Rustica", copiasv: "200 Millones", precio: "$299", imagen: "1984", imagen2: "1984b"))
        Libros.append(Libro(nombre: "La teoría del todo.", año: "2010", genero: "Ciencia", autor: "Stephen Hawking", ediciones: Ediciones10, paginas: "152", encuadernacion: "Tapa Blanda", copiasv: "100 Millones", precio: "$323", imagen: "Teoria", imagen2: "Teoria1"))
        Libros.append(Libro(nombre: "Guerra Mundial Z.", año: "2006", genero: "Horror", autor: "Max Brooks", ediciones: Ediciones11, paginas: "464", encuadernacion: "Tapa Blanda", copiasv: "310 Millones", precio: "$599", imagen: "Guerra", imagen2: "Guerra1"))
        Libros.append(Libro(nombre: "El principito", año: "1943", genero: "Novela", autor: "Saint-Exupéry", ediciones: Ediciones12, paginas: "92", encuadernacion: "Tapa Blanda", copiasv: "500 Millones", precio: "$237", imagen: "Principito", imagen2: "Principito1"))
        Libros.append(Libro(nombre: "El arte de la guerra", año: "1772", genero: "No-ficción", autor: "Sun Tzu", ediciones: Ediciones13, paginas: "288", encuadernacion: "Tapa Blanda", copiasv: "20 Millones", precio: "$336", imagen: "ArteG", imagen2: "ArteG1"))
        Libros.append(Libro(nombre: "La historia interminable", año: "1979", genero: "Fantasía", autor: "Michael Ende", ediciones: Ediciones14, paginas: "500", encuadernacion: "Tapa Blanda/Dura", copiasv: "10 Millones", precio: "$635", imagen: "Historia", imagen2: "Historia1"))
        Libros.append(Libro(nombre: "Memento mori", año: "2013", genero: "Thriller", autor: "César Pérez", ediciones: Ediciones15, paginas: "531", encuadernacion: "Tapa Blanda", copiasv: "500 mil", precio: "$700", imagen: "Memento", imagen2: "Memento1"))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesLibroController
        destino.Libro = Libros[tvLibros.indexPathForSelectedRow!.row]
    }
}

