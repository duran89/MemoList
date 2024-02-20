//
//  TodoListTableViewCell.swift
//  MemoList
//
//  Created by 권정근 on 2/20/24.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {
    
    static let identifier = "TodoListTableViewCell"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
