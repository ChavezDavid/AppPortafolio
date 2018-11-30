//
//  UsuarioController.swift
//  AppPortafolio
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class UsuarioController : UIViewController{
    
    @IBOutlet weak var imgUsuario: UIImageView!
    @IBOutlet weak var lblNombreUsuario: UILabel!
    @IBOutlet weak var lblEdadUsuario: UILabel!
    @IBOutlet weak var lblEstadoUsuario: UILabel!
    @IBOutlet weak var lblPaisUsuario: UILabel!
    @IBOutlet weak var lblDescripcionUsuario: UILabel!
    @IBOutlet weak var lblSeguidoresUsuario: UILabel!
    @IBOutlet weak var lblSiguiendoUsuario: UILabel!
    @IBOutlet weak var lblSitioWebUsuario: UILabel!
    @IBOutlet weak var lblCorreoUsuario: UILabel!
    @IBOutlet weak var lblCategoriaUsuario: UILabel!
    @IBOutlet weak var lblTelefonoUsuario: UILabel!
    @IBOutlet weak var lblCreacionUsuario: UILabel!
    
    var usuario : Usuario?
    override func viewDidLoad() {
        
    }
}
