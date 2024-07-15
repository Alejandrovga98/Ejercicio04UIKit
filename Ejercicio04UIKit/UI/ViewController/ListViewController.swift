
import UIKit

class ListViewController: UIViewController {

    let viewModel: ListViewModel
    var persons: [Persons]?
    
    @IBOutlet weak var tableVIew: UITableView!
    @IBOutlet weak var emptyView: UIView!
    @IBOutlet weak var btnAñadirPersona: UIButton!
    static var identifier: String {
        .init(describing: self)
    }
    

    init(viewModel: ListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: Self.identifier,
                   bundle: .main)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        fetchPerson()
    }
    @IBAction func addPersonButton(_ sender: Any) {
        viewModel.detail()
    }
    func configureTableView(){
        Cell.register(in: self.tableVIew)
        self.tableVIew.dataSource = self
    }
    func fetchPerson(){
        persons = viewModel.fetchPerson()
        if let persons = persons, !persons.isEmpty {
            self.tableVIew.reloadData()
            self.emptyView.isHidden = true
        } else {
            self.emptyView.isHidden = false
        }
    }
}
extension ListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        (persons?.count ?? 0)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as? Cell
        let name = self.persons?[indexPath.row].name
        cell?.personName.text = name
        return cell ?? UITableViewCell()
    }
    
    
}

