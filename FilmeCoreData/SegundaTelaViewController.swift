//
//  SegundaTelaViewController.swift
//  FilmeCoreData
//
//  Created by user213596 on 4/6/22.
//

import UIKit

//classe //nome do arquivo  //herança sendo puxada
class SegundaTelaViewController : UIViewController{
    
    //variavel //nome da variavel (pegar dados do login e senha)
    var usuarioValue : String = " "
    var senhaValue : String = " "
    
    //sobreescrever da herança pai //função //nome da função      //viewDidLoad (assim que carregar a tela)
    override func viewDidLoad() {
        //quando vc esta na classe filha e quer puxar herança do pai  //nome da função
        super.viewDidLoad()
        // Faça qualquer configuração adicional após carregar a visualização.
        
        // imprimir no console
        print(usuarioValue)
        print(senhaValue)
    }
}
