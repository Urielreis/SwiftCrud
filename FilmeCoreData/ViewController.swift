//
//  ViewController.swift
//  FilmeCoreData
//
//  Created by user213596 on 4/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    var index : Int = -1
    var FilmeNome : String?

    @IBOutlet weak var usuariotext: UITextField!
    
    @IBOutlet weak var senhatext: UITextField!
    
    @IBAction func buttonLogin(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //digitar (prep)
    //sobreescrevendo // função //herança
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //imprimir
      //  print(segue.identifier!)
        
        if (segue.identifier == "loginParaSegundaTelaSegue"){
        
       //variavel // nome da variavel // segue é destino e esta convertendo para dados (segundaTelaViewController)
        let segundaTela = segue.destination as! SegundaTelaViewController
        
               
        //nome da segue //nome da variavel  //nome do textField .text
        segundaTela.usuarioValue = usuariotext.text!
        //nome da segue //nome da variavel  //nome do textField .text
            segundaTela.senhaValue = senhatext.text!

        }
    }

}

