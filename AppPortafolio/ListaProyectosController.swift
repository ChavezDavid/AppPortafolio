//
//  ListaProyectosController.swift
//  AppPortafolio
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class ListaProyectosController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DatosProyectos.proyectos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellProyecto") as! CeldaProyectoController
        celda.lblNombreProyecto.text = DatosProyectos.proyectos[indexPath.row].nombre
        celda.lblAutorProyecto.text = DatosProyectos.proyectos[indexPath.row].usuario
        celda.lblCategoriaProyecto.text = DatosProyectos.proyectos[indexPath.row].categoria
        return celda
    }
    
    
}
