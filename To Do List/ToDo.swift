//
//  ToDo.swift
//  To Do List
//
//  Created by student on 23.10.2018.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class ToDo: Object {
    @objc dynamic var tittle: String = ""
    @objc dynamic var isComplete: Bool = false
    @objc dynamic var dueDate: Date = Date()
    @objc dynamic var notes: String? = nil
    
    static let realm = try! Realm()
    
    init(tittle: String, isComplete: Bool, dueDate: Date, notes: String?){
        self.tittle = tittle
        self.isComplete = isComplete
        self.dueDate = dueDate
        self.notes = notes
        super.init()
    }
    
    required init() {
        super.init()
    }
    
    required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required init(value: Any, schema: RLMSchema){
        super.init(value: value, schema: schema)
    }
    
 
  
    static func loadToDos() -> [ToDo]?{
        var todos = [ToDo]()
        let todoObjects = realm.objects(ToDo.self)
        todoObjects.forEach { todos.append($0) }
        return todos
    }
    
    static func loadSampleToDos() -> [ToDo]{
        return [
            
            ToDo(tittle: "Купить хлеб", isComplete: false, dueDate: Date(), notes: "Бородинский"),
            ToDo(tittle: "Заказать торт", isComplete: false, dueDate: Date(), notes: "Заметка 2"),
            ToDo(tittle: "Сдать вещи в химчистку", isComplete: false, dueDate: Date(), notes: "Заметка 3"),
            ToDo(tittle: "помыть машину", isComplete: false, dueDate: Date(), notes: "Заметка 4"),
            ToDo(tittle: "Выгулить собаку", isComplete: false, dueDate: Date(), notes: "Заметка 5"),
            
        ]
    }
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
}
