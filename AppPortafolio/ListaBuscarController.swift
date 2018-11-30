//
//  ListaBuscarController.swift
//  AppPortafolio
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class ListaBuscarController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var urlProyecto = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DatosProyectos.proyectos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellBuscar") as! CeldaBuscarController
        celda.lblNombreBuscar.text = DatosProyectos.proyectos[indexPath.row].nombre
        celda.lblAutorBuscar.text = DatosProyectos.proyectos[indexPath.row].usuario
        celda.lblCategoriaBuscar.text = DatosProyectos.proyectos[indexPath.row].categoria
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    
    override func viewDidLoad() {
        
    }
}
