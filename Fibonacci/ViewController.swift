//
//  ViewController.swift
//  Fibonacci
//
//  Created by Usuario on 17/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Propiedades
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var box: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcular(_ sender: UIButton){
        let num = Int(box.text!)
        if let x = num{
            resultado.text = String(fibonacci(x))
        }else{
            print("No hay valor")
        }
    }
    
    func fibonacci(_ num : Int)->Int{
        if num <= 0{
            return 0
        }else if num == 1 {
            return 1
        }else{
            return fibonacci(num-1)+fibonacci(num-2)
        }
    }
}

