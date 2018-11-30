//
//  ListaComentariosController.swift
//  AppPortafolio
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class ListaComentariosController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DatosComentarios.comentarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellComentario") as! CeldaComentarioController
        celda.lblUsuarioComentario.text = DatosComentarios.comentarios[indexPath.row].usuario
        celda.lblComentario.text = DatosComentarios.comentarios[indexPath.row].comentario
        
        return celda
    }
    
    
}
