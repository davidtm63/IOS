//
//  GestorProductos.swift
//  SwiftPrueba
//
//  Created by user137296 on 5/2/18.
//  Copyright © 2018 user137296. All rights reserved.
//

import UIKit

class GestorProductos: NSObject {
    func insertar(producto:Producto){
        NSLog("Insertar : %@ %@ %@", producto.fabricante,producto.modelo,producto.precio);
    }
    
    func modificar(producto:Producto){
        NSLog("Modificar : %@ %@ %@", producto.fabricante,producto.modelo,producto.precio);
    }
    func borrar(producto:Producto){
        NSLog("Borrar : %@ %@ %@", producto.fabricante,producto.modelo,producto.precio);
    }
}
