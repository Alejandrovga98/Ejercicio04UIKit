
import UIKit

class ListViewController: UIViewController {

    
    @IBOutlet weak var btnAñadirPersona: UIButton!
    static var identifier: String {
        .init(describing: self)
    }
    

    init() {
        super.init(nibName: Self.identifier,
                   bundle: .main)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

