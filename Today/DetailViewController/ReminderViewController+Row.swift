//
//  ReminderViewController+Row.swift
//  Today
//
//  Created by Софья Норина on 23.01.2023.
//

import UIKit

extension ReminderViewController {
    enum Row: Hashable {
        case header(String)
        case viewData
        case viewNotes
        case viewTime
        case viewTitle
        case editText(String)
        
        var imageName: String? {
            switch self{
            case .viewData: return "calendar.circle"
            case .viewNotes: return "square.and.pencil"
            case .viewTime: return "clock"
            default: return nil
            }
     }
        var image: UIImage?{
            guard let imageName = imageName else {return nil}
            let configuration = UIImage.SymbolConfiguration(textStyle: .headline)
            return UIImage(systemName: imageName, withConfiguration: configuration)
        }
        var textStyle: UIFont.TextStyle {
            switch self {
            case .viewTitle: return .headline
            default: return .subheadline
            }
        }
    
    }
}
