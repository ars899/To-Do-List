//
//  ToDo.swift
//  To Do List
//
//  Created by student on 23.10.2018.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

struct ToDo{
    var tittle: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String
    
    
    
    static func loadToDos() -> [ToDo]?{
        return nil
    }
    
    static func loadSampleToDos() -> [ToDo]{
        return [
            
            ToDo(tittle: "Дело 1", isComplete: false, dueDate: Date(), notes: "Заметка 1"),
            ToDo(tittle: "Дело 2", isComplete: false, dueDate: Date(), notes: "Заметка 2"),
            ToDo(tittle: "Дело 3", isComplete: false, dueDate: Date(), notes: "Заметка 3"),
            ToDo(tittle: "Дело 4", isComplete: false, dueDate: Date(), notes: "Заметка 4"),
            ToDo(tittle: "Дело 5", isComplete: false, dueDate: Date(), notes: "Заметка 5"),
            
        ]
    }
}
