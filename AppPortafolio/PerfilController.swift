//
//  PerfilController.swift
//  AppPortafolio
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class PerfilController : UIViewController{
    
    @IBOutlet weak var imgUsuarioPerfil: UIImageView!
    @IBOutlet weak var lblEdadPerfil: UILabel!
    @IBOutlet weak var lblEstadoPerfil: UILabel!
    @IBOutlet weak var lblPaisPerfil: UILabel!
    @IBOutlet weak var lblDescripcionPerfil: UILabel!
    @IBOutlet weak var lblSeguidoresPerfil: UILabel!
    @IBOutlet weak var lblSiguiendoPerfil: UILabel!
    @IBOutlet weak var lblSitioWebPerfil: UILabel!
    @IBOutlet weak var lblCorreoPerfil: UILabel!
    @IBOutlet weak var lblCategoriaPerfil: UILabel!
    @IBOutlet weak var lblTelefonoPerfil: UILabel!
    @IBOutlet weak var lblCreacionPerfil: UILabel!
    
    var usuario : Usuario?
    
    override func viewDidLoad() {
        
    }
}
