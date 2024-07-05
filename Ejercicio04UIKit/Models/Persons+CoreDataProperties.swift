//
//  Persons+CoreDataProperties.swift
//  Ejercicio04UIKit
//
//  Created by Alejandro Vidal Gómez Alves on 5/7/24.
//
//

import Foundation
import CoreData


extension Persons {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Persons> {
        return NSFetchRequest<Persons>(entityName: "Persons")
    }

    @NSManaged public var name: String?
    @NSManaged public var favoriteColor: String?
    @NSManaged public var birthDay: Date?
    @NSManaged public var favoriteCity: String?
    @NSManaged public var favoriteNumber: Int16
    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double

}

extension Persons : Identifiable {

}
