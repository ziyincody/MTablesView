//
//  MTablesCell.swift
//  Pods
//
//  Created by Ziyin Wang on 2017-02-19.
//
//

import UIKit

@available(iOS 9.0, *)
class MainTableCell: UITableViewCell {
    
    let optionLabel:UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var selectedOption:String?
    {
        didSet
        {
            setupLabels()
            optionLabel.text = selectedOption
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    func setupLabels()
    {
        addSubview(optionLabel)
        self.accessoryType = .disclosureIndicator
        optionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        optionLabel.rightAnchor.constraint(equalTo: rightAnchor, constant:-30).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class DetailTableCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
