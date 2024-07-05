
import Foundation
import UIKit

class Coordinator {
    var navigator : UINavigationController
    let dataManager: DataManager = CoreDataManager()
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func startList(){
        let viewModel = ListViewModel(dataManager: dataManager, coordinator: self)
        let viewController = ListViewController(viewModel: viewModel)
        navigator.setViewControllers([viewController], animated: true)
    }
    
    func detail(){
        let viewModel = DetailViewModel(dataManager: self.dataManager)
        let detailViewController = DetailViewController(viewModel: viewModel)
        navigator.pushViewController(detailViewController, animated: true)
    }
}

