//
//  ViewController.swift
//  SwiftPrueba
//
//  Created by user137296 on 5/2/18.
//  Copyright © 2018 user137296. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gp : GestorProductos!;
    
    @IBOutlet var tfFabricante : UITextField!;
    @IBOutlet var tfModelo : UITextField!;
    @IBOutlet var tfPrecio : UITextField!;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gp = GestorProductos();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func crearProducto() -> Producto {
        //let fabricante : String!;
        return Producto(fabricante: tfFabricante.text!, modelo: tfModelo.text!, precio: tfPrecio.text!);
    }
    
    @IBAction func btnInsertar(sender : AnyObject){
        let Producto = crearProducto();
        gp.insertar(producto: Producto);
    }
    @IBAction func btnModificar(sender : AnyObject){
        let Producto = crearProducto();
        gp.modificar(producto: Producto);
    }
    @IBAction func btnBorrar(sender : AnyObject){
        let Producto = crearProducto();
        gp.borrar(producto: Producto);
    }
    

}

