
import Foundation

protocol DataManager{
    
    func addPerson(name: String, birthday: Date, favoriteCity: String, favoriteColor: String, favoriteNumber: Int, latitude: Double, longitude: Double)
    func fechtPerson() ->  [Persons]?
    func editPersons(person: Persons, name: String, birthday: Date, favoriteCity: String, favoriteColor: String, favoriteNumber: Int, latitude: Double, longitude: Double)
}
