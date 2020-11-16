//
//  ViewController.swift
//  Calculadora
//
//  Created by Delfín Hernández Gómez on 24/09/2020.
//

import UIKit

class CalculadoraController: UIViewController {
    
    var network: NetworkProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        network = NetworkManager()
        
    }
    
    func fetchPets(){
        
        self.network!.doRequest()
        
    }
    

}

protocol CalculadoraProtocol {
    
    func suma(num1: Int, num2: Int) -> Int
    func resta(num1: Int, num2: Int) -> Int
    
    func division(num1: Int, num2:Int) -> Float
    func multiplicacion(num1: Int, num2: Int)-> Float
    func modulo(num1: Int)-> Float
    func isOdd(num1: Int)-> Bool
    
    func fetchPets()

}


extension CalculadoraController: CalculadoraProtocol {
    
    func suma(num1: Int, num2: Int) -> Int {
        
        return num1 + num2
        
    }
    
    func resta(num1: Int, num2: Int) -> Int {

        return num1 - num2

    }
    
    func division(num1: Int, num2: Int) -> Float {
        
        return 0

    }
    
    func multiplicacion(num1: Int, num2: Int) -> Float {
        
        return 0

    }
    
    func modulo(num1: Int) -> Float {
        
        return 0

    }
    
    func isOdd(num1: Int) -> Bool {
        
        return true
    }
    
    
}

