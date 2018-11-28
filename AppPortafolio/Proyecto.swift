//
//  Proyecto.swift
//  AppPortafolio
//
//  Created by Alumno on 27/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class Proyecto{
    var nombre : String
    var usuario : String
    var categoria : String
    var imagen : String
    var id : String
    var descripcion : String
    var fechaCreacion : String
    var comentario: String
    var etiqueta : String
    
    init(nombre : String, usuario : String, categoria : String, imagen : String, id : String, descripcion : String, fechaCreacion : String, comentario : String, etiqueta : String) {
        self.nombre = nombre
        self.usuario = usuario
        self.categoria = categoria
        self.imagen = imagen
        self.id = id
        self.descripcion = descripcion
        self.fechaCreacion = fechaCreacion
        self.comentario = comentario
        self.etiqueta = etiqueta
    }
}
