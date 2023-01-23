//
//  ReminderListViewController + Action .swift
//  Today
//
//  Created by Софья Норина on 17.01.2023.
//
import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
