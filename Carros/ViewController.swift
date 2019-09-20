//
//  ViewController.swift
//  Carros
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var carros : [Carro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carros.append(Carro(matricula: "X4Z123", modelo: "Focus", agencia: "Ford", año: 2016))
        carros.append(Carro(matricula: "ABC678", modelo: "Focus", agencia: "Ford", año: 2018))
        carros.append(Carro(matricula: "CH4543", modelo: "Tsuru", agencia: "Nissan", año: 2013))
        
    }
    
    //Numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Que tantas filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    //Contenido de cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarro") as? CeldaCarroController
        
        celda?.lblMatricula.text = carros[indexPath.row].matricula
        celda?.lblModelo.text = carros[indexPath.row].modelo
        celda?.lblAgencia.text = carros[indexPath.row].agencia
        celda?.lblAño.text = "\(carros[indexPath.row].año)"
        
        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

