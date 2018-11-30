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
    
    @IBOutlet weak var tvProyectos: UITableView!
    
    var urlProyecto = "https://portofolio-app.azurewebsites.net/?json=get_posts&post_type=proyecto"
    var encontrada : String = ""
    
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
    
    override func viewDidLoad() {
        Alamofire.request(urlProyecto).responseJSON { response in
            if let dictRespuesta = response.result.value as? NSDictionary{
                if let respuesta = dictRespuesta.value(forKey: "status") as? String {
                    self.encontrada = respuesta
                }
                if self.encontrada == "ok" {
                    if let post = dictRespuesta.value(forKey: "posts") as? NSArray {
                        for i in post {
                            if let dictPost = i as? NSDictionary{
                                if let fields = dictPost.value(forKey: "custom_fields") as? NSDictionary {
                                    
                                    var idProyecto : String = ""
                                    var nombreProyecto : String = ""
                                    var nombreUsuario : String = ""
                                    var categoria : String = ""
                                    var imagen : String = ""
                                    var descripcion = ""
                                    
                                    if let id = fields.value(forKey: "id") as? NSArray {
                                        for i in id{
                                            if let proyecto = i as? String{
                                                idProyecto = proyecto
                                            }
                                        }
                                    }
                                    if let nombre = fields.value(forKey: "name") as? NSArray {
                                        for i in nombre{
                                            if let proyecto = i as? String{
                                                nombreProyecto = proyecto
                                            }
                                        }
                                    }
                                    if let usuario = fields.value(forKey: "user") as? NSArray {
                                        for i in usuario{
                                            if let proyecto = i as? String{
                                                nombreUsuario = proyecto
                                            }
                                        }
                                    }
                                    if let categoriaProyecto = fields.value(forKey: "category") as? NSArray {
                                        for i in categoriaProyecto{
                                            if let proyecto = i as? String{
                                                categoria = proyecto
                                            }
                                        }
                                    }
                                    if let imagenProyecto = fields.value(forKey: "image") as? NSArray {
                                        for i in imagenProyecto{
                                            if let proyecto = i as? String{
                                                imagen = proyecto
                                            }
                                        }
                                    }
                                    if let descripcionProyecto = fields.value(forKey: "id") as? NSArray {
                                        for i in descripcionProyecto{
                                            if let proyecto = i as? String{
                                                descripcion = proyecto
                                            }
                                        }
                                    }
                                    
                                    DatosProyectos.proyectos.append(Proyecto(nombre: nombreProyecto, usuario: nombreUsuario, categoria: categoria, imagen: imagen, id: idProyecto, descripcion: descripcion, fechaCreacion: "", comentario: "", etiqueta: ""))
                                }
                            }
                        }
                        self.tvProyectos.reloadData()
                    }
                }
            }
        }
    }
    
}
