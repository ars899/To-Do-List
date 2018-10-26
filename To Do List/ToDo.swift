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
    var notes: String?
    
    
    
    static func loadToDos() -> [ToDo]?{
        return nil
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
