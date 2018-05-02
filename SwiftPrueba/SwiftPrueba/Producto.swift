//
//  Producto.swift
//  SwiftPrueba
//
//  Created by user137296 on 5/2/18.
//  Copyright © 2018 user137296. All rights reserved.
//

import UIKit

class Producto: NSObject {
    //Propiedades de la calse
    var fabricante : String!;
    var modelo : String!;
    var precio : String!;
    
    //Constructor de la clase (init)
    init(fabricante :String,modelo:String,precio:String){
        self.fabricante = fabricante;
        self.modelo = modelo;
        self.precio = precio;
    }
}
