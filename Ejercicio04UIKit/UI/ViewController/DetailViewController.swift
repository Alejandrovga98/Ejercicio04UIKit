
import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameDetail: UITextField!
    @IBOutlet weak var colorDetail: UIColorWell!
    @IBOutlet weak var birthdayDetail: UITextField!
    @IBOutlet weak var cityDetaul: UITextField!
    @IBOutlet weak var numberDetail: UITextField!
    @IBOutlet weak var LocationDetail: UITextField!
    @IBOutlet weak var personAddBTN: UIButton!
    
    let viewModel: DetailViewModel
    
    static var identifier: String {
        .init(describing: self)
    }
    

    init(viewModel: DetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: Self.identifier,
                   bundle: .main)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func addPerson(_ sender: Any) {
        
    }
}
