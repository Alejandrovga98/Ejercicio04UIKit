
import Foundation

class DetailViewModel {
    private let dataManager: DataManager
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
    func addPerson(name: String, birthday: Date, favoriteCity: String, favoriteColor: String, favoriteNumber: Int, latitude: Double, longitude: Double){
        dataManager.addPerson(name: name, birthday: birthday, favoriteCity: favoriteCity, favoriteColor: favoriteColor, favoriteNumber: favoriteNumber, latitude: latitude, longitude: longitude)
    }
    
}
