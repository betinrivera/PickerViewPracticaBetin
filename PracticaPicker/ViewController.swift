//
//  ViewController.swift
//  PracticaPicker
//
//  Created by Alumno on 13/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let colores = ["Rojo", "Naranja", "Amarillo", "Verde", "Azul", "Morado", "Negro", "Blanco", "Rosa"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colores.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colores[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            view.backgroundColor = UIColor.red
            imgFoto.image = UIImage(named: "Rojo_00000")
        case 1:
            view.backgroundColor = UIColor.orange
            imgFoto.image = UIImage(named: "Naranja_00000")
        case 2:
            view.backgroundColor = UIColor.yellow
            imgFoto.image = UIImage(named: "Amarillo_00000")
        case 3:
            view.backgroundColor = UIColor.green
            imgFoto.image = UIImage(named: "Verde_00000")
        case 4:
            view.backgroundColor = UIColor.blue
            imgFoto.image = UIImage(named: "Azul_00000")
        case 5:
            view.backgroundColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
            imgFoto.image = UIImage(named: "Morado_00000")
        case 6:
            view.backgroundColor = UIColor.black
            imgFoto.image = UIImage(named: "Negro_00000")
        case 7:
            view.backgroundColor = UIColor.white
            imgFoto.image = UIImage(named: "Blanco_00000")
        case 8:
            view.backgroundColor = UIColor.red
            imgFoto.image = UIImage(named: "Rojo_00000")
        
        default:
            break
        }
    }

    @IBOutlet weak var imgFoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        imgFoto.image = UIImage(named: "Rojo_00000")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

