//
//  NetworkManager.swift
//  Calculadora
//
//  Created by Delfín Hernández Gómez on 16/11/2020.
//

import Foundation

class NetworkManager: NetworkProtocol {
    
    
    func doRequest() -> Any {
        
        return 0
    }
    
    
}

protocol NetworkProtocol {
    func doRequest() -> Any
}
