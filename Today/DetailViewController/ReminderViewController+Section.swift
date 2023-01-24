//
//  ReminderViewController+Section.swift
//  Today
//
//  Created by Софья Норина on 23.01.2023.
//

import Foundation

extension ReminderViewController{
    enum Section: Int, Hashable {
        case view
        case title
        case data
        case notes
        
        
        var name: String {
            switch self {
            case .view: return ""
            case .title:
                return NSLocalizedString("Title ", comment: "Title section name")
            case .data:
                return NSLocalizedString("Date", comment: "Data section name")
            case .notes:
                return NSLocalizedString("Notes", comment: "Notes section name")
            }
        }
    }
}
