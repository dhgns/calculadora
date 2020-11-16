//
//  CalculadoraTests.swift
//  CalculadoraTests
//
//  Created by Delfín Hernández Gómez on 24/09/2020.
//

import XCTest
@testable import Calculadora

class CalculadoraTests: XCTestCase {
    
    //SUT: System Under Test
    var sut: CalculadoraController? //Es un viewController
    
    //Helpers / mocks
    var netwokMock = NetworkMock()
    
    override func setUp() {
        super.setUp()
        
        sut = UIStoryboard.init(name: "Main", bundle: .main).instantiateViewController(identifier: "calculadoraVC")
        
        netwokMock.requestCalled = false
        sut?.network = netwokMock
                
        //inicializar variables, contantes, clases de ayuda, la propia clase sobre la que vamos a hacer test
        
    }
    
    //Como nombrar test:
    //func test   +  nombreMetodo  +  FuncionamientoEsperado

    func testSumShouldSumTwoValues() throws {
        
        var sumando1 = 2
        var sumando2 = 2
        var suma = sut?.suma(num1: sumando1, num2: sumando2)
        
        XCTAssertTrue(suma == (sumando1+sumando2))
        
    }
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


//Helkper || mock
class NetworkMock: NetworkProtocol {
    
    var requestCalled: Bool = false
    
    func doRequest() -> Any {
        requestCalled = true
        return 0
    }
    
    
}
