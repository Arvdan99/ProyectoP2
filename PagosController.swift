//
//  PagosController.swift
//  project3
//
//  Created by Alumno ULSA on 18/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//



import UIKit

class PagosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var pagos : [Pagos] = []
    
    
    //@IBOutlet weak var TvHorario: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pagos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPagos") as! CeldaPagosController
        celda.lblMes.text = pagos[indexPath.row].mes
        celda.lblMonto.text = pagos[indexPath.row].monto
        celda.lblPagado.text = pagos[indexPath.row].pagado
        
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
}

