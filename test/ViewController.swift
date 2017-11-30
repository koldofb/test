//
//  ViewController.swift
//  test
//
//  Created by Itxaso Manzano on 30/11/17.
//  Copyright © 2017 Luis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cajaTexto: UITextField!
    @IBOutlet var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        etiqueta.text = ""
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func boton(_ sender: UIButton) {
        let texto = cajaTexto.text!
        let alerta :UIAlertController = UIAlertController(title: "Saludo", message: texto, preferredStyle: .alert)
        let okAccion :UIAlertAction = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        alerta.addAction(okAccion)
        present(alerta, animated: true, completion: nil)
        
        etiqueta.text = "☃️☃️ Feliz Navidad \(String(describing: texto)) ☃️☃️"
    }
    
    
}

