//
//  PerfilController.swift
//  AppPortafolio
//
//  Created by Alumno on 28/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

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
    
    var urlPerfil = "https://portofolio-app.azurewebsites.net/?p=180&json=1"
    var urlImagen = "https://portofolio-app.azurewebsites.net//wp-content/uploads/2018/11/402483_1882572720753_1880578142_n.jpg"
    var encontrada : String = ""
    
    override func viewDidLoad() {
        Alamofire.request(urlPerfil).responseJSON { response in
            if let dictRespuesta = response.result.value as? NSDictionary {
                if let respuesta = dictRespuesta.value(forKey: "status") as? String {
                    self.encontrada = respuesta
                }
                if self.encontrada == "ok" {
                    if let post = dictRespuesta.value(forKey: "post") as? NSDictionary {
                                if let fields = post.value(forKey: "custom_fields") as? NSDictionary {
                                    
                                    if let idPerfil = fields.value(forKey: "id") as? NSArray {
                                        for i in idPerfil{
                                            if let dato = i as? String {
                                                self.lblDescripcionPerfil.text = dato
                                            }
                                        }
                                    }
                                    if let edadPerfil = fields.value(forKey: "edad") as? NSArray {
                                        for i in edadPerfil{
                                            if let dato = i as? String {
                                                self.lblEdadPerfil.text = dato
                                            }
                                        }
                                    }
                                    if let sitioPerfil = fields.value(forKey: "site") as? NSArray {
                                        for i in sitioPerfil{
                                            if let dato = i as? String {
                                                self.lblSitioWebPerfil.text = dato
                                        }
                                        }
                                    }
                                    if let correoPerfil = fields.value(forKey: "correo") as? NSArray {
                                        for i in correoPerfil{
                                            if let dato = i as? String {
                                                self.lblCorreoPerfil.text = dato
                                            }
                                        }
                                    }
                                    
                                    Alamofire.request(self.urlImagen).responseImage { response in
                                        self.imgUsuarioPerfil.image = response.result.value
                                    }
                                }
                    }
                }
            }
        }
    }
}
