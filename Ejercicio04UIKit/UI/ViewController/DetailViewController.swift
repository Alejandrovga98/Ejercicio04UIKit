
import UIKit
import Foundation

class DetailViewController {
    
    static var identifier: String {
        .init(describing: self)
    }
    

   // init() {
     //   super.init(nibName: Self.identifier,
  //                 bundle: .main)
    //}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
