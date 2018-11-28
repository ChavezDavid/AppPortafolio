//
//  Usuario.swift
//  AppPortafolio
//
//  Created by Alumno on 27/11/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class Usuario{
    var nombre : String
    var id : String
    var estado : String
    var pais : String
    var imagen : String
    var sitioWeb : String
    var seguidores : String
    var seguidos : String
    var categoria : String
    var descripcion : String
    var correo : String
    var telefono : String
    var fechaCreacion : String
    var edad : String
    
    init(nombre : String, id : String, estado : String, pais : String, imagen : String, sitioWeb : String, seguidores : String, seguidos : String, categoria : String, descripcion : String, correo : String, telefono : String, fechaCreacion : String, edad : String) {
        self.nombre = nombre
        self.id = id
        self.estado = estado
        self.pais = pais
        self.imagen = imagen
        self.sitioWeb = sitioWeb
        self.seguidores = seguidores
        self.seguidos = seguidos
        self.categoria = categoria
        self.descripcion = descripcion
        self.correo = correo
        self.telefono = telefono
        self.fechaCreacion = fechaCreacion
        self.edad = edad
    }
}
