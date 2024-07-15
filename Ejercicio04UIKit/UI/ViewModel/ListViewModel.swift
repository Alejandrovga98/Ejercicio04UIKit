

import Foundation

class ListViewModel {
    let dataManager: DataManager
    let coordinator: Coordinator
    
    init(dataManager: DataManager, coordinator: Coordinator) {
        self.dataManager = dataManager
        self.coordinator = coordinator
    }
    func detail () {
        self.coordinator.detail()
    }
    func fetchPerson() -> [Persons]?{
        return dataManager.fechtPerson()
    }
}
