//
//  FormularioViewController.swift
//  FilmeCoreData
//
//  Created by user213596 on 4/6/22.
//

import UIKit
import CoreData

class FormularioViewController: UIViewController {
    var bdv = FilmeModel()
    var bd = BancoFilme()
    var index = -1
    
    @IBOutlet weak var textEdicao: UITextView!
    
    @IBOutlet weak var texttitle: UITextField!
    
    
    @IBAction func Addbutton(_ sender: Any) {
        bdv.infoFilme = textEdicao.text
        bdv.titleFilme = texttitle.text
                if index >= 0{
            bd.AlterarFilmes(index: index, filme: bdv)
            
        }else {
            bd.salvarFilme(filmemodel: bdv)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if index >= 0{
            textEdicao.text = bdv.infoFilme
            texttitle.text = bdv.titleFilme
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
