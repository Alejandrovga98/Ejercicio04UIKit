
import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameDetail: UITextField!
    @IBOutlet weak var colorDetail: UIColorWell!
    @IBOutlet weak var birthdayDetail: UIDatePicker!
    @IBOutlet weak var cityDetail: UITextField!
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
        configureView()
    }
    
    func configureView(){
        birthdayDetail.preferredDatePickerStyle = .compact
        birthdayDetail.datePickerMode = .date
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func addPerson(_ sender: Any) {
        if let name = nameDetail.text, let city = cityDetail.text, let number = Int(numberDetail.text ?? "") , let location = LocationDetail.text, let color = colorDetail.selectedColor {
            viewModel.addPerson(name: name, birthday: birthdayDetail.date, favoriteCity: city, favoriteColor: color.hexString(), favoriteNumber: number , latitude: 00, longitude: 00)
        }else {
            let alert = UIAlertController(title: "Error", message: "Te faltan campos por rellenar", preferredStyle:
                    .alert)
            alert.addAction(UIAlertAction(title: "Entendido", style: .destructive, handler: { _ in
                self.dismiss(animated: true)
            }))
            self.present(alert, animated: true)
        }
    }
}
