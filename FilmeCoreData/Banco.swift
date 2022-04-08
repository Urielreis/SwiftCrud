//
//  Banco.swift
//  FilmeCoreData
//
//  Created by user213596 on 4/6/22.
//

import CoreData
import UIKit

class Banco{
    func getContext() -> NSManagedObjectContext {
        let app = UIApplication.shared.delegate as! AppDelegate
        let context = app.persistentContainer.viewContext
        return context
    }
    
    func savaConnectionCoreData(entityName: String) -> NSManagedObject{
        let connection = NSEntityDescription.insertNewObject(forEntityName: entityName, into: getContext())
        return connection
    }
    
    func request(entityName: String) -> NSFetchRequest<NSFetchRequestResult>{
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        return request
    }
}
