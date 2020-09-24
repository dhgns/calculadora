//
//  ViewController.swift
//  Calculadora
//
//  Created by Delfín Hernández Gómez on 24/09/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

protocol CalculadoraProtocol {
    
    func suma(num1: Int, num2: Int) -> Int
    func resta(num1: Int, num2: Int) -> Int
    
    //func division
    //func multiplicacion
    //func modulo()

}

