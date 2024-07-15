

import Foundation
import UIKit
import CoreData

class CoreDataManager: DataManager{
    func addPerson(name: String, birthday: Date, favoriteCity: String, favoriteColor: String, favoriteNumber: Int, latitude: Double, longitude: Double) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let context = appDelegate.persistentContainer.viewContext
        
        let newPerson = Persons(context: context)
        newPerson.name = name
        newPerson.birthDay = birthday
        newPerson.favoriteCity = favoriteCity
        newPerson.favoriteColor = favoriteColor
        newPerson.favoriteNumber = Int16(favoriteNumber)
        newPerson.latitude = latitude
        newPerson.longitude = longitude
        
        do {
            try context.save()
            print("Person saved successfully")
        } catch {
            print("Failed to save person: \(error)")
        }
    }
    func fechtPerson() ->  [Persons]?{
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return nil }
        let context = appDelegate.persistentContainer.viewContext
        
        let fechtRequest = NSFetchRequest<Persons>(entityName: "Persons")
        
        do {
            return try context.fetch(fechtRequest)
        }catch{
            print("Failed to fecht list \(error)")
            return nil
        }
    }
    func editPersons(person: Persons, name: String, birthday: Date, favoriteCity: String, favoriteColor: String, favoriteNumber: Int, latitude: Double, longitude: Double) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let context = appDelegate.persistentContainer.viewContext
        
        person.name = name
        person.birthDay = birthday
        person.favoriteCity = favoriteCity
        person.favoriteColor = favoriteColor
        person.favoriteNumber = Int16(favoriteNumber)
        person.latitude = latitude
        person.longitude = longitude
        
        do {
            try context.save()
            print("Person saved successfully")
        } catch {
            print("Failed to save person: \(error)")
        }
    }
}
