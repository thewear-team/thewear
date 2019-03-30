//
//  Realm .swift
//  theWear
//
//  Created by Валентина on 18/03/2019.
//  Copyright © 2019 Валентина. All rights reserved.
//

import Foundation
import RealmSwift

class RealmProvider {
    static var configuration : Realm.Configuration{
        return Realm.Configuration(deleteRealmIfMigrationNeeded: true)
    }
    
    static func get<T: Object>(_ type: T.Type, in realm: Realm? = try? Realm(configuration: RealmProvider.configuration)) -> Results<T>? {
        return realm?.objects(type)
    }
    
    static func cleanTables (){
        let realm = try! Realm(configuration: RealmProvider.configuration)
        try! realm.write {
            realm.delete(realm.objects(RealmWeatherToday.self))
            realm.delete(realm.objects(RealmWeatherForecast.self))
            realm.delete(realm.objects(RealmWeatherHour.self))
        }
    }
    
    @discardableResult
    static func saveToDB<T : Object>(items : [T], update : Bool) -> Realm { //with update
        let realm = try! Realm(configuration: RealmProvider.configuration)
        print(RealmProvider.configuration.fileURL!)
        do {
            try realm.write {
                realm.add(items, update: update)
            }
        }
        catch{
            print(error.localizedDescription)
        }
        return realm
    }
    
}

