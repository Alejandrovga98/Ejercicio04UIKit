
import Foundation

protocol DataManager{
    
    func addPerson(name: String, birthday: Date)
    func fechtPerson() ->  [Persons]?
    func editPersons(person: Persons, name: String, birthday: Date)
}
