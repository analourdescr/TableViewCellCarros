//
//  Carro.swift
//  Carros
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Carro {
    var matricula : String
    var modelo : String
    var agencia : String
    var año : Int
    
    init(matricula: String, modelo: String, agencia: String, año: Int) {
        self.matricula = matricula
        self.modelo = modelo
        self.agencia = agencia
        self.año = año
        
    }
}
