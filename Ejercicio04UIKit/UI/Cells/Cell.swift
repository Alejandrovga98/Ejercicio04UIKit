//
//  Cells.swift
//  Ejercicio04UIKit
//
//  Created by Alejandro Vidal Gómez Alves on 15/7/24.
//

import Foundation


import UIKit

class Cell: UITableViewCell {

    private static let nib = UINib(nibName: Cell.identifier, bundle: Bundle.main)
    
    static func register(in table: UITableView, for identifier: String = identifier) {
        table.register(nib, forCellReuseIdentifier: Self.identifier)
    }
    
    static var identifier: String {
        .init(describing: self)
    }
    @IBOutlet weak var personName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
