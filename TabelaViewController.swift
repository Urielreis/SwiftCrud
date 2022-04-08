//
//  TabelaViewController.swift
//  FilmeCoreData
//
//  Created by user213596 on 4/6/22.
//

import UIKit

//classe //nome do arquivo  //chama UITable
class TabelaViewController : UITableViewController{
    
    var Filmes : [FilmeModel] = []
    var bdFilme = BancoFilme()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Filmes = bdFilme.allFilmes()
        
    }
    
    //numero de Colunas
    
    //sobreescrever  //função
    override func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }
    
    //Quantas linhas
    //retorna quantidade de elementos
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Filmes.count
    }
    
    //uma linha para cada celula
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        
        
        //indexPath.row (pega toda celula)
        celula.textLabel?.text = Filmes[indexPath.row].titleFilme
        //mudar cor da celula
        celula.textLabel?.textColor = UIColor.red
        
        return celula
    }
    //Função de deslizar para deletar
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            bdFilme.deletarFilme(index: indexPath.row)
            Filmes = bdFilme.allFilmes()
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = super.storyboard?.instantiateViewController(withIdentifier: "Filmeeditado") as! FormularioViewController
        vc.bdv = Filmes[indexPath.row]
        vc.index = indexPath.row
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
        
    }
}
