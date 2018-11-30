//
//  ProyectoDetalle.swift
//  AppPortafolio
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class ProyectoDetalle : UIViewController{
    
    @IBOutlet weak var imgProyectoDetalle: UIImageView!
    @IBOutlet weak var lblAutorDetalle: UILabel!
    @IBOutlet weak var lblCategoriaDetalle: UILabel!
    @IBOutlet weak var lblDescripcionDetalle: UILabel!
    @IBOutlet weak var lblFechaDetalle: UILabel!
    @IBOutlet weak var lblEtiquetasDetalle: UILabel!
    @IBOutlet weak var lblIdDetalle: UILabel!
    
    var proyecto : Proyecto?
    
    override func viewDidLoad() {
        if proyecto != nil{
            lblAutorDetalle.text = proyecto?.usuario
            lblCategoriaDetalle.text = proyecto?.categoria
            lblDescripcionDetalle.text = proyecto?.descripcion
            lblFechaDetalle.text = proyecto?.fechaCreacion
            lblEtiquetasDetalle.text = proyecto?.etiqueta
            lblIdDetalle.text = proyecto?.id
        }
    }
}
