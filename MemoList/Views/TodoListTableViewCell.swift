//
//  TodoListTableViewCell.swift
//  MemoList
//
//  Created by 권정근 on 2/20/24.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {
    
    static let identifier = "TodoListTableViewCell"
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2024년 2월 21일"
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textColor = .label
        return label
    }()
    
    private let contentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.backgroundColor = .red
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "오늘은 하루가 너무 길었다."
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .label
        return label
    }()
    
    private let todoTextContentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "오늘은 내가 하고 싶은 일이 많이 있었지만, 그 일들을 다 하지 못했다. 그래서 너무 너무 슬펐다. 내일은 좀 더 잘해보자"
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.numberOfLines = 3
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(dateLabel)
        contentView.addSubview(contentImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(todoTextContentLabel)
        
        configureConstraints()
    }
    
    private func configureConstraints() {
        let dateLabelConstraints = [
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            dateLabel.heightAnchor.constraint(equalToConstant: 20)
        ]
        
        let contentImageViewConstraints = [
            contentImageView.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor),
            contentImageView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 8),
            contentImageView.heightAnchor.constraint(equalToConstant: 100),
            contentImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let titleLabelConstraints = [
            titleLabel.leadingAnchor.constraint(equalTo: contentImageView.trailingAnchor, constant: 8),
            titleLabel.topAnchor.constraint(equalTo: contentImageView.topAnchor)
        ]
        
        let todoTextContentLabelConstraints = [
            todoTextContentLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            todoTextContentLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            todoTextContentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            // todoTextContentLabel.bottomAnchor.constraint(equalTo: contentImageView.bottomAnchor)
            
        ]
        
        NSLayoutConstraint.activate(dateLabelConstraints)
        NSLayoutConstraint.activate(contentImageViewConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(todoTextContentLabelConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
