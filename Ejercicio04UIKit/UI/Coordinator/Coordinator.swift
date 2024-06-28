
import Foundation
import UIKit

class Coordinator {
    var navigator : UINavigationController
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func startList(){
        let viewController = ViewController()
        navigator.setViewControllers([viewController], animated: true)
    }
}

