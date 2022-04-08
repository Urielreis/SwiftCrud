//
//  BancoFilme.swift
//  FilmeCoreData
//
//  Created by user213596 on 4/6/22.
//

import Foundation
import CoreData

class BancoFilme : Banco {
    //Salvar o Filme
    func salvarFilme(filmemodel: FilmeModel){
        
        let addFilme = super.savaConnectionCoreData(entityName: "Filme")
        addFilme.setValue(filmemodel.titleFilme, forKey: "titleFilme")
        addFilme.setValue(filmemodel.infoFilme, forKey: "infoFilme")
        
        do{
            try super.getContext().save()
        }catch{
            print("Erro ao Salvar")
        }
    }
    
    //Listar todos os Filme
    func allFilmes() -> [FilmeModel]{
        var listaFilme : [FilmeModel] = []
        let request = super.request(entityName: "Filme")
        do{
            let addFilme = try super.getContext().fetch(request)
            for t in addFilme as! [NSManagedObject]{
                let filme = FilmeModel()
                filme.titleFilme = t.value(forKey: "titleFilme") as? String
                filme.infoFilme = t.value(forKey: "infoFilme") as? String
                listaFilme.append(filme)
            }
            } catch {
                print("Erro ao consultar")
            }
            return listaFilme
        }
    
    //Deletar um Filme
        func deletarFilme(index : Int){
            
            let request = super.request(entityName: "Filme")
            
            do{
                
                let getFilmes = try super.getContext().fetch(request) as! [ NSManagedObject]
                try super.getContext().delete(getFilmes[index])
                try super.getContext().save()
                
            }catch{
                print("Erro")
            }
        }
        
    //Altera todos os Filmes
        func AlterarFilmes(index : Int, filme : FilmeModel){
            let request = super.request(entityName: "Filme")
            
            do{
                
                let getFilmes = try super.getContext().fetch(request) as! [NSManagedObject]
                getFilmes[index].setValue(filme.titleFilme, forKey: "titleFilme")
                getFilmes[index].setValue(filme.infoFilme, forKey: "infoFilme")
                try super.getContext().save()
            } catch{
                print("Erro ao Atualizar Filme")
            }
        }

}

