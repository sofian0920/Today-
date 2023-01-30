//
//  ReminderViewController+CellConfiguration.swift
//  Today
//
//  Created by Софья Норина on 24.01.2023.
//

import UIKit
extension ReminderViewController {
    func defaultConfiguration(for cell: UICollectionViewListCell, ar row: Row) -> UIListContentConfiguration{
        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = text(for: row)
        contentConfiguration.textProperties.font = UIFont.preferredFont(forTextStyle: row.textStyle)
        contentConfiguration.image = row.image
        return contentConfiguration
    }
    
    func headrConfiguration(for cell: UICollectionViewListCell, with title: String) -> UIListContentConfiguration {
        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = title
        return contentConfiguration
    }
    
    func titleConfiguration(for cell: UICollectionViewListCell, with title: String?) -> TextFieldContentView.Configuration {
        var contentConfiguration = cell.textFieldConfiguration()
        contentConfiguration.text = title
        return contentConfiguration
    }
    
    func text(for row: Row) -> String? {
           switch row {
           case .viewData: return reminder.dueDate.dayText
           case .viewNotes: return reminder.notes
           case .viewTime: return reminder.dueDate.formatted(date: .omitted, time: .shortened)
           case .viewTitle: return reminder.title
           default: return nil
           }
       }
}
